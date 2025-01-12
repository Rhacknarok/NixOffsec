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
    bison
    flex
    fontforge
    makeWrapper
    pkg-config
    gnumake
    gcc
    libiconv
    autoconf
    automake
    libtool 
    gnupg
    gcc
    gnumake
    coreutils-full
    zip
    go
    protoc-gen-go
    protoc-gen-go-grpc
    protobuf
    unzip
     #linuxKernel.packages.linux_6_1.virtualboxGuestAdditions

  #  vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
  #  wget
  ];
}
