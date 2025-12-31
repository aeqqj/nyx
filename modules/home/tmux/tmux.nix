{ config, pkgs, lib, ... }:

{
  programs.tmux.enable = true;

  xdg.configFile."tmux/tmux.conf".source = ./tmux.conf;
}

