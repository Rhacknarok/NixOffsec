#!/bin/bash
#Adaptation based on install.sh of https://github.com/BishopFox/
set -e

# if any update break the installation the last commit which worked is 53c61cb0241f30492bf719979b10647c9d48c7b4 so
#git clone https://github.com/BishopFox/sliver /home/vagrant/sliver
#cd /home/vagrant/sliver
#git checkout 53c61cb0241f30492bf719979b10647c9d48c7b4

# CLoning the Sliver repository
git clone https://github.com/BishopFox/sliver /home/vagrant/sliver
cd /home/vagrant/sliver
sed -i 's#\(\s*\)\./go-assets\.sh#\1sh ./go-assets.sh#g' Makefile
make

if test -f "./sliver-server"; then
    echo "Moving the Sliver server executable to /root/sliver-server..."
    echo "Setting permissions for the Sliver server executable..."
    chmod 755 ./sliver-server

    echo "Unpacking the Sliver server..."
    ./sliver-server unpack --force
else
    exit 3
fi

if test -f "./sliver-client"; then
    echo "Setting permissions for the Sliver client executable..."
    chmod 755 "./sliver-client"
else
    exit 3
fi

# Generate local configs
echo "Generating local configs ..."

# Generate local configs
echo "Generating operator configs ..."
mkdir -p /root/.sliver-client/configs
./sliver-server operator --name root --lhost localhost --save /root/.sliver-client/configs --permissions all
chown -R root:root /root/.sliver-client/

USER_DIRS=(/home/*)
for USER_DIR in "${USER_DIRS[@]}"; do
    USER=$(basename "$USER_DIR")
    if id -u "$USER" >/dev/null 2>&1; then
        echo "Generating operator configs for user $USER..."
        mkdir -p "$USER_DIR/.sliver-client/configs"
        ./sliver-server operator --name "$USER" --lhost localhost --save "$USER_DIR/.sliver-client/configs" --permissions all
        chown -R "$USER":"$(id -gn "$USER")" "$USER_DIR/.sliver-client/"
    fi
done

#activate the sliver service
echo "Activating the Sliver service..."
sed -i '/^[[:space:]]*#[[:space:]]*\.\?\/sliver\.nix/s/^[[:space:]]*#//' /etc/nixos/modules/all.nix
nixos-rebuild switch
systemctl enable sliver.service
echo "Sliver service activated."
echo "You can connect to it with this command /home/vagrant/sliver/sliver-client (root or with vagrant user)"
