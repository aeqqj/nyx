{
    config,
    lib,
    modulesPath,
    ...
}:

{
    imports = [
        (modulesPath + "/installer/scan/not-detected.nix")
    ];

    boot.initrd.availableKernelModules = [
        "nvme"
        "xhci_pci"
        "thunderbolt"
        "usbhid"
        "usb_storage"
        "sd_mod"
    ];
    boot.initrd.kernelModules = [ ];
    boot.kernelModules = [ "kvm-amd" ];
    boot.extraModulePackages = [ ];

    fileSystems."/" = {
        device = "/dev/disk/by-uuid/1d773d3e-b6d7-4e95-bc07-d99370a4e353";
        fsType = "ext4";
    };

    fileSystems."/boot" = {
        device = "/dev/disk/by-uuid/BC2A-DE71";
        fsType = "vfat";
        options = [
            "fmask=0077"
            "dmask=0077"
        ];
    };

    swapDevices = [
        { device = "/dev/disk/by-uuid/bcf13f3a-dbc5-45ef-8310-d22147a9d1d9"; }
    ];

    nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";
    hardware.cpu.amd.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
}
