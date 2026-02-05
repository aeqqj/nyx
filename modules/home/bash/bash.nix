{
    programs.bash = {
        enableCompletion = true;

        shellAliases = {
            rebuild = "sudo nixos-rebuild switch --flake .#nyx";
            cd = "z";
        };

        bashrcExtra = ''
            eval "$(zoxide init bash)"
        '';
    };
}
