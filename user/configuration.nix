{
  config,
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
    description = "Main User";
    extraGroups = [
      "wheel"
      "networkmanager"
      "docker"
      "seat"
    ];
    shell = pkgs.bash;
    
    openssh.authorizedKeys.keys = [
      "${globals.SshKey}"
    ];
  };

  system.stateVersion = "25.11";
}
