{ config, pkgs, globals, lib, ... }:

{
  home = {
    username = globals.UserName;
    homeDirectory = "/home/${globals.UserName}";
  };

  imports = [
    ./alacritty/alacritty.nix
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

  home.pointerCursor = {
    enable = true;
    gtk.enable = true;
    package = pkgs.apple-cursor;
    name = "apple-cursor";
    size = 12;
  };

  # git config
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
