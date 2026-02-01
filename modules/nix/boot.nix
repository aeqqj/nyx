{ pkgs, config, ... }:

{
    boot = {
        kernelPackages = pkgs.linuxPackages;
        kernelModules = [ "v4l2loopback" ];
        extraModulePackages = [ config.boot.kernelPackages.v4l2loopback ];

        # appimage support
        binfmt.registrations.appimage = {
            wrapInterpreterInShell = false;
            interpreter = "${pkgs.appimage-run}/bin/appimage-run";
            recognitionType = "magic";
            offset = 0;
            mask = ''\xff\xff\xff\xff\x00\x00\x00\x00\xff\xff\xff'';
            magicOrExtension = ''\x7fELF....AI\x02'';
        };

        loader = {
            grub.enable = true;
            grub.device = "nodev";
            grub.efiSupport = true;
            grub.useOSProber = true;
            efi.canTouchEfiVariables = true;
        };
        plymouth.enable = true;
    };
}
