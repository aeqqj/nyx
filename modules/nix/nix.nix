{ config, pkgs, ... }:

{
    imports = [
        ./boot.nix
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
