{
  imports = [
    ./bootloader.nix
    ./enableFlake.nix
    ./keymap.nix
    ./gnome.nix
    ./networking.nix
    ./packages.nix
    ./printing.nix
    ./proxy.nix
    ./suid.nix
    ./sound.nix
    ./systemPackages.nix
    ./timeLocalSettings.nix
    ./vagrant.nix
#   ./vmware.nix
#   ./sliver.nix
  ];
}