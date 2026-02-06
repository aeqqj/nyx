{
    programs.bash = {
        enableCompletion = true;

        shellAliases = {
            rebuild = "sudo nixos-rebuild switch --flake .#nyx";
            cd = "z";
        };

        initExtra = ''
            eval "$(zoxide init bash)"
        '';
    };
}
