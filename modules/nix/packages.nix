{ pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;

  programs = {
    dconf.enable = true;
    gamemode.enable = true;
    niri.enable = true;
    nix-ld.enable = true;
    starship.enable = true;
    steam.enable = true;
    xwayland.enable = true;
    virt-manager.enable = true;
    zsh.enable = true;
  };

  services = {
    displayManager.enable = true;
    displayManager.ly.enable = true;
    flatpak.enable = true;
    openssh.enable = true;
    printing = {
      enable = true;
      webInterface = true;
    };
  };

  security.polkit.enable = true;

  environment.systemPackages = with pkgs; [
    adw-gtk3
    alacritty
    appimage-run
    brightnessctl
    btop
    cups
    curl
    dconf
    discord
    docker
    docker-compose
    ffmpeg
    fzf
    gcc
    gamemode
    gdu
    gimp
    git
    glib
    gnumake
    godot
    go
    grub2
    imv
    krita
    ly
    mako
    mpv
    nautilus
    neovim
    niri
    nix-ld
    obs-studio
    papirus-icon-theme
    pavucontrol
    playerctl
    pnpm
    polkit
    p7zip-rar
    qbittorrent
    qemu
    ripgrep
    spotify
    starship
    steam
    steam-run
    swaybg
    tree
    tmux
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
    zoxide
    zsh
  ];
}

