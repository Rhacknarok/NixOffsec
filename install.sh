#!/bin/bash

if [ "$EUID" -ne 0 ]; then
  echo "the script must be run in sudo."
  exit 1
fi


CONFIG_FILE="/etc/nixos/configuration.nix"
BOOTLOADER_FILE="./modules/bootloader.nix" 
BACKUP_DIR="/etc/nixos/backup"
LUKS_PATTERN='boot.initrd.luks.devices.'
CRYPTO_PATTERN='boot.loader.grub.enableCryptodisk'
FORCE_FLAG=false

# check if --force flag is present
for arg in "$@"; do
  if [ "$arg" == "--force" ]; then
    FORCE_FLAG=true
  fi
done

LUKS_LINES=$(grep "$LUKS_PATTERN" "$CONFIG_FILE")
BOOTLOADERCRYPTO=$(grep "$CRYPTO_PATTERN" "$CONFIG_FILE")

if [ -n "$BOOTLOADERCRYPTO" ]; then
  echo "Line CRYPTO find in $CONFIG_FILE :"
  echo "$BOOTLOADERCRYPTO"

  while IFS= read -r crypto; do

    if ! grep -Fq "$crypto" "$BOOTLOADER_FILE"; then
      echo "adding line to bootloader file..."

      sed -i "/}/ i\\$crypto" "$BOOTLOADER_FILE"

      echo "line added with success"
          FIRST_LINE=$(head -n 1 "$BOOTLOADER_FILE")
          if [[ $FIRST_LINE =~ $CRYPTO_PATTERN ]]; then
          sed -i '1d' "$BOOTLOADER_FILE"
          fi
    else
      echo "Bootloader are already configured with cryptodisk :"
      echo "$crypto"
    fi
  done <<< "$BOOTLOADERCRYPTO"
else
  echo "cryptodisk are not present"
fi

if [ -n "$LUKS_LINES" ]; then
  echo "Line LUKS find in $CONFIG_FILE :"
  echo "$LUKS_LINES"

  while IFS= read -r line; do

    if ! grep -Fq "$line" "$BOOTLOADER_FILE"; then
      echo "adding line to bootloader file..."

      sed -i "/}/ i\\$line" "$BOOTLOADER_FILE"

      echo "line added with success"
          FIRST_LINE=$(head -n 1 "$BOOTLOADER_FILE")
          if [[ $FIRST_LINE =~ $LUKS_PATTERN ]]; then
          sed -i '1d' "$BOOTLOADER_FILE"
          fi
    else
      echo "Bootloader are already configured with LUKS :"
      echo "$line"
    fi
  done <<< "$LUKS_LINES"
else
  echo "LUKS are not activated"
fi

if [ -f "$CONFIG_FILE" ]; then
  echo "backuping the original configuration file..."

  if [ ! -d "$BACKUP_DIR" ]; then
    mkdir "$BACKUP_DIR"
  fi

  BACKUP_FILE="$BACKUP_DIR/configuration.nix.backup.$(date +%F_%T)"
  cp "$CONFIG_FILE" "$BACKUP_FILE"
  echo "file are backuped in $BACKUP_FILE"

else
  echo "dont find the configuration file"
  exit 1
fi

# cp -r configuration.nix flake.nix flake.lock modules/ /etc/nixos/
echo "Moving files to /etc/nixos/..."
if [ "$FORCE_FLAG" = true ]; then
  # overwrite the files 
  cp -r configuration.nix flake.nix flake.lock modules/ /etc/nixos/
  echo "configurations files and folders overwrite in /etc/nixos/"
else
  # move file does not overwrite
  mv configuration.nix /etc/nixos/
  mv -n flake.nix flake.lock modules/ /etc/nixos/
  echo "Files moved to /etc/nixos/"
fi

nixos-rebuild switch