{ config, pkgs, globals, lib, ... }:

{
  home = {
    username = globals.UserName;
    homeDirectory = "/home/${globals.UserName}";

    pointerCursor = {
      enable = true;
      gtk.enable = true;
      package = pkgs.apple-cursor;
      name = "macOS";
      size = 32;
    };
  };

  imports = [
    ./alacritty/alacritty.nix
    ./emacs/emacs.nix
    ./git.nix
    ./mako/mako.nix
    ./mime-apps.nix
    ./niri/niri.nix
    ./nvim/nvim.nix
    ./starship/starship.nix
    ./tmux/tmux.nix
    ./tofi/tofi.nix
    ./user-dirs.nix
    ./waybar/waybar.nix
  ];

  dconf.settings = {
    "org/gnome/desktop/interface" = {
      color-scheme = "prefer-dark";
    };
  };

  gtk = {
    enable = true;
    theme.name = "Adwaita-dark";
    
    colorScheme = "dark";
  };

  qt = {
    enable = true;
    style.name = "adwaita-dark";
  };

  programs = {
    alacritty.enable = true;
    go.enable = true;
    obs-studio.enable = true;
    obs-studio.plugins = [ pkgs.obs-studio-plugins.wlrobs ];
    tofi.enable = true;
  };

  services = {
    mako.enable = true;
  };

  home.stateVersion = "24.05";
}
