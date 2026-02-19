{
    description = "nyx";

    inputs = {
        nixpkgs.url = "github:NixOS/nixpkgs?ref=nixos-unstable";
        nix-flatpak.url = "github:gmodena/nix-flatpak/?ref=latest";

        niri.url = "github:sodiboo/niri-flake";

        nixvim.url = "github:nix-community/nixvim";

        aagl = {
            url = "github:ezKEa/aagl-gtk-on-nix";
            inputs.nixpkgs.follows = "nixpkgs";
        };

        zen-browser = {
            url = "github:youwen5/zen-browser-flake";
            inputs.nixpkgs.follows = "nixpkgs";
        };

        home-manager = {
            url = "github:nix-community/home-manager";
            inputs.nixpkgs.follows = "nixpkgs";
        };
    };

    outputs =
        inputs@{
            aagl,
            nixpkgs,
            nix-flatpak,
            home-manager,
            ...
        }:
        let
            # change these :D
            system = "x86_64-linux";
            globals = {
                UserName = "charles";
                HostName = "nyx";
                GitName = "aeqqj";
                GitEmail = "48713075+aeqqj@users.noreply.github.com";
                SshKey = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIJD07Bi//Y+ZodpXjtBSvW/YB4Ke2KLxKO1G0vKXh926 48713075+aeqqj@users.noreply.github.com";
            };
        in
        {
            nixosConfigurations.${globals.HostName} = nixpkgs.lib.nixosSystem {
                inherit system;
                specialArgs = { inherit system globals inputs; };
                modules = [
                    nix-flatpak.nixosModules.nix-flatpak
                    home-manager.nixosModules.home-manager
                    ./user/configuration.nix
                    ./modules/nix/nix.nix
                    {
                        imports = [ aagl.nixosModules.default ];
                        nix.settings = aagl.nixConfig; # Set up Cachix
                        programs.anime-game-launcher.enable = true; # Adds launcher and /etc/hosts rules
                        nixpkgs.overlays = [ inputs.niri.overlays.niri ];
                        home-manager.useGlobalPkgs = true;
                        home-manager.useUserPackages = true;
                        home-manager.extraSpecialArgs = { inherit system globals inputs; };
                        home-manager.users.${globals.UserName} = import ./modules/home/home.nix;
                    }
                ];
            };
        };
}
