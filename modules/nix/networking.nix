{ pkgs, options, globals, ... }:

{
  networking = {
    hostName = globals.HostName;
    networkmanager.enable = true;
    firewall = {
      enable = true;
      allowedTCPPorts = [
        22
        80
        443
        8080
      ];
    };
  };
}

