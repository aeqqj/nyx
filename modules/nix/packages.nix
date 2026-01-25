{ pkgs, ... }:

with pkgs;
let
  rstudio = rstudioWrapper.override {
    packages = with rPackages; [ 
      ggplot2 
      dplyr 
      xts
    ]; 
  };
in
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
  };

  services = {
    displayManager.enable = true;
    displayManager.ly.enable = true;
    flatpak.enable = true;
    openssh.enable = true;
    syncthing.enable = true;
  };

  security.polkit.enable = true;

  # packages here are redundant(from home.nix) to show the overall collection of packages in the system
  environment.systemPackages = with pkgs; [
    adw-gtk3
    alacritty
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
    fzf
    gcc
    gamemode
    gdu
    gimp
    git
    glib
    gnumake
    go
    grub2
    imv
    krita
    ly
    mako
    mpv
    nautilus
    neovim
    nodejs
    niri
    nix-ld
    obs-studio
    papirus-icon-theme
    pavucontrol
    playerctl
    pnpm
    polkit
    prismlauncher
    p7zip-rar
    qbittorrent
    qemu
    ripgrep
    rstudio
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
  ];
}

