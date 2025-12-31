{ description = "S13L custom NixOS + Home Manager config";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs?ref=nixos-unstable";
    nix-flatpak.url = "github:gmodena/nix-flatpak/?ref=latest";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      self,
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
        GitEmail = "charlesjadeargawanon@gmail.com";
        SshKey = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIJD07Bi//Y+ZodpXjtBSvW/YB4Ke2KLxKO1G0vKXh926 48713075+aeqqj@users.noreply.github.com";
      };
    in
    {
      nixosConfigurations.${globals.HostName} = nixpkgs.lib.nixosSystem {
        inherit system;
        specialArgs = { inherit globals; };
        modules = [
          nix-flatpak.nixosModules.nix-flatpak
          ./user/configuration.nix
	      ./modules/nix/nix.nix
          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.extraSpecialArgs = { inherit globals; };
            home-manager.users.${globals.UserName} = import ./modules/home/home.nix;
          }
        ];
      };
    };
}
