{ config, pkgs, ... }:

{
  imports = [
    ./boot.nix
    ./desktop.nix
    ./flatpak.nix
    ./fonts.nix
    ./hardware.nix
    ./networking.nix
    ./packages.nix
    ./pipewire.nix
    ./system.nix
    ./virtualisation.nix
  ];
}

