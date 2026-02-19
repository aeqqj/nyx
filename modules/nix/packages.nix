{ inputs, pkgs, ... }:

with pkgs;
let
    rstudio = rstudioWrapper.override {
        packages = with rPackages; [
            curl
            dplyr
            ggplot2
            openssl
            rsconnect
            tinytex
            tidyverse
            tidyr
            xts
        ];
    };
in
{
    nixpkgs = {
        config = {
            allowUnfree = true;
            android_sdk.accept_license = true;
        };
    };
    programs = {
        dconf.enable = true;
        gamemode.enable = true;
        niri.enable = true;
        steam.enable = true;
        xwayland.enable = true;
        virt-manager.enable = true;
        bash.enable = true;
    };
    services = {
        desktopManager.plasma6.enable = true;
        displayManager = {
            enable = true;
            sddm = {
                enable = true;
                wayland.enable = true;
            };
        };
        # displayManager = {
        #     enable = true;
        #     ly.enable = true;
        # };
        flatpak.enable = true;
        openssh.enable = true;
        syncthing.enable = true;
    };

    security.polkit.enable = true;

    environment = {
        pathsToLink = [ "/share/bash-completion" ];
        systemPackages = with pkgs; [
            adw-gtk3
            adwaita-qt
            alacritty
            android-studio
            appimage-run
            bluetui
            brightnessctl
            btop
            cups
            curl
            dconf
            discord
            docker
            docker-compose
            emacs-pgtk
            ffmpeg
            figma-linux
            fzf
            gcc
            gamemode
            gdu
            gimp
            git
            glib
            gnumake
            grub2
            hyprlock
            inputs.zen-browser.packages.${pkgs.stdenv.hostPlatform.system}.default
            imv
            lazydocker
            mako
            mpv
            neovim
            nodejs
            nirius
            obs-studio
            pavucontrol
            playerctl
            pnpm
            polkit
            prismlauncher
            python3
            p7zip-rar
            qbittorrent
            qemu
            ripgrep
            rstudio
            spotify
            steam
            steam-run
            swaybg
            tmux
            tofi
            tree
            unrar
            unzip
            virt-viewer
            waybar
            wf-recorder
            wget
            wineWowPackages.stable
            winetricks
            wl-clipboard
            xwayland
            xwayland-satellite
            yazi
            zoxide
        ];
    };
}
