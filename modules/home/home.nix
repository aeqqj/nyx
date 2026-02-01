{
    inputs,
    pkgs,
    globals,
    system,
    ...
}:

let
    inherit (inputs.niri-scratchpad.packages.${system}) niri-scratchpad;
in
{
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
            QT_STYLE_OVERRIDE = "adwaita-dark";
            QT_FORCE_DARK_MODE = "1";
            XDG_SESSION_TYPE = "wayland";
        };

        packages = [
            niri-scratchpad
        ];
    };

    imports = [
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
        platformTheme.name = "gtk";
        style.name = "adwaita-dark";
    };

    programs = {
        alacritty.enable = true;
        go.enable = true;
    };

    services = {
        mako.enable = true;
    };

    home.stateVersion = "24.05";
}
