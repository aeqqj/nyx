{
    inputs,
    pkgs,
    globals,
    ...
}:

{
    imports = [
        inputs.niri.homeModules.niri
        ./alacritty/alacritty.nix
        ./emacs/emacs.nix
        ./git.nix
        ./hyprlock/hyprlock.nix
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

    home = {
        username = globals.UserName;
        homeDirectory = "/home/${globals.UserName}";

        pointerCursor = {
            enable = true;
            gtk.enable = true;
            package = pkgs.apple-cursor;
            name = "macOS";
            size = 16;
        };

        sessionVariables = {
            ELECTRON_ENABLE_WAYLAND = "1";
            ELECTRON_OZONE_PLATFORM_HINT = "wayland";
            GDK_BACKEND = "wayland";
            OZONE_PLATFORM = "wayland";
            QT_QPA_PLATFORM = "wayland";
            XDG_SESSION_TYPE = "wayland";
        };

        packages = with pkgs; [
            flat-remix-icon-theme
        ];

    };

    dconf.settings = {
        "org/gnome/desktop/interface" = {
            color-scheme = "prefer-dark";
            icon-theme = "Flat-Remix";
        };
    };

    gtk = {
        enable = true;
        theme.name = "Adwaita-dark";

        colorScheme = "dark";
    };

    qt = {
        enable = true;
        platformTheme.name = "gtk";
        style.name = "Adwaita-dark";
    };

    programs = {
        alacritty.enable = true;
        niri = {
            enable = true;
            package = pkgs.niri-unstable;
        };
    };

    services = {
        mako.enable = true;
    };

    home.stateVersion = "24.05";
}
