# nyx dotfiles

## Info
Modular dotfiles using homemanager + flakes for declarativity.

- window manager: Niri
- Panel: Waybar
- Menu: Tofi
- Terminal: Alacritty
- Shell: Bash

## Structure
```
nyx
├── flake.lock
├── flake.nix
├── modules
│   ├── home
│   │   ├── alacritty
│   │   │   ├── alacritty.nix
│   │   │   ├── alacritty.toml
│   │   │   └── lackluster.toml
│   │   ├── git.nix
│   │   ├── home.nix
│   │   ├── mako
│   │   │   ├── config
│   │   │   └── mako.nix
│   │   ├── mime-apps.nix
│   │   ├── niri
│   │   │   ├── config.kdl
│   │   │   └── niri.nix
│   │   ├── nvim
│   │   │   ├── config
│   │   │   │   ├── core
│   │   │   │   │   ├── keymaps.lua
│   │   │   │   │   ├── lsp.lua
│   │   │   │   │   └── options.lua
│   │   │   │   └── plugins
│   │   │   │       ├── lackluster.lua
│   │   │   │       └── nvim-ts-autotag.lua
│   │   │   └── nvim.nix
│   │   ├── starship
│   │   │   ├── starship.nix
│   │   │   └── starship.toml
│   │   ├── tmux
│   │   │   ├── tmux.conf
│   │   │   └── tmux.nix
│   │   ├── tofi
│   │   │   ├── config
│   │   │   └── tofi.nix
│   │   ├── user-dirs.nix
│   │   └── waybar
│   │       ├── waybar.conf
│   │       ├── waybar.css
│   │       └── waybar.nix
│   └── nix
│       ├── boot.nix
│       ├── desktop.nix
│       ├── flatpak.nix
│       ├── fonts.nix
│       ├── hardware.nix
│       ├── networking.nix
│       ├── nix.nix
│       ├── packages.nix
│       ├── pipewire.nix
│       ├── system.nix
│       └── virtualisation.nix
└── user
    ├── configuration.nix
    └── hardware-configuration.nix
```

## Installation
Do take note that there are global variables in the flake.nix file, change it accordingly :D
```sh
git clone https://github.com/aeqqj/nyx.git
cd nyx # adjust globals while you're at it
sudo nixos-rebuild switch --flake .#{username}
```
