{
    pkgs,
    globals,
    ...
}:

{
    imports = [
        ./hardware-configuration.nix
    ];

    nix.settings.experimental-features = [
        "nix-command"
        "flakes"
    ];

    users.users.${globals.UserName} = {
        isNormalUser = true;
        description = "main";
        extraGroups = [
            "adbusers"
            "audio"
            "wheel"
            "networkmanager"
            "docker"
            "seat"
            "kvm"
            "input"
        ];

        openssh.authorizedKeys.keys = [
            "${globals.SshKey}"
        ];
    };

    system.stateVersion = "25.11";
}
