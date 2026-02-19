{ lib, ... }:
{
    services = {
        flatpak = {
            remotes = lib.mkOptionDefault [
                {
                    name = "flathub-beta";
                    location = "https://flathub.org/beta-repo/flathub-beta.flatpakrepo";
                }
            ];

            update.auto.enable = true;
            uninstallUnmanaged = true;

            packages = [
                "org.vinegarhq.Sober"
                "org.azahar_emu.Azahar"
            ];
        };
    };
}
