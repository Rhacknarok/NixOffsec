{ config, pkgs, ... }:
{
  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    wget
    curl
    git
    nano
# packages for sliver setuping
    gnupg
    gcc
    gnumake
     #linuxKernel.packages.linux_6_1.virtualboxGuestAdditions

  #  vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
  #  wget
  ];
}
