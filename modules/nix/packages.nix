{ inputs, pkgs, ... }:

{
    programs = {
        bash.enable = true;
        dconf.enable = true;
        gamemode.enable = true;
        niri.enable = true;
        steam.enable = true;
        xwayland.enable = true;
        virt-manager.enable = true;
    };
    services = {
        displayManager = {
            enable = true;
            ly.enable = true;
        };
        flatpak.enable = true;
        openssh.enable = true;
        syncthing.enable = true;
    };

    security.polkit.enable = true;

    environment = {
        pathsToLink = [ "/share/bash-completion" ];
        systemPackages = with pkgs; [
            alacritty
            appimage-run
            bluetui
            brightnessctl
            btop
            curl
            dconf
            discord
            docker
            emacs-pgtk
            ffmpeg
            figma-linux
            fzf
            gcc
            gamemode
            gdu
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
            pavucontrol
            pipewire
            playerctl
            pnpm
            polkit
            prismlauncher
            python3
            qbittorrent
            qemu
            ripgrep
            spotify
            steam
            steam-run
            swww
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
