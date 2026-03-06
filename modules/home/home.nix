{
    inputs,
    pkgs,
    globals,
    ...
}:

{
    imports = [
        ./alacritty/alacritty.nix
        ./bash/bash.nix
        ./emacs/emacs.nix
        ./git.nix
        ./mako/mako.nix
        ./mime-apps.nix
        ./niri/niri.nix
        ./nvim/nvim.nix
        ./starship/starship.nix
        ./tmux/tmux.nix
        ./rofi/rofi.nix
        ./user-dirs.nix
        ./waybar/waybar.nix
    ];

    home = {
        username = globals.UserName;
        homeDirectory = "/home/${globals.UserName}";

        sessionVariables = {
            ELECTRON_ENABLE_WAYLAND = "1";
            ELECTRON_OZONE_PLATFORM_HINT = "wayland";
            GDK_BACKEND = "wayland";
            OZONE_PLATFORM = "wayland";
            QT_QPA_PLATFORM = "wayland";
            XDG_SESSION_TYPE = "wayland";
        };
    };

    gtk = {
        enable = true;
        theme.name = "Adwaita-dark";

        colorScheme = "dark";
    };

    programs = {
        alacritty.enable = true;
        bash.enable = true;
        niri.enable = true;
        starship.enable = true;
        zoxide.enable = true;
    };

    services = {
        mako.enable = true;
    };

    home.stateVersion = "24.05";
}
