{ config, pkgs, lib, ... }:

{
  xdg.configFile."mako/config".source = ./config;
}

