{
    config,
    pkgs,
    lib,
    ...
}:

{
    xdg.configFile."alacritty/alacritty.toml".source = ./alacritty.toml;
    xdg.configFile."alacritty/lackluster.toml".source = ./lackluster.toml;
}
