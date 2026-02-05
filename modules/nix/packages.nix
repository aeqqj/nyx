{ pkgs, ... }:

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
        displayManager.enable = true;
        displayManager.ly.enable = true;
        flatpak.enable = true;
        openssh.enable = true;
        syncthing.enable = true;
    };

    security = {
        pam.services.hyprlock = { };
        polkit.enable = true;
    };

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
            imv
            lazydocker
            ly
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
            p7zip-rar
            qbittorrent
            qemu
            qutebrowser
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
