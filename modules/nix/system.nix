{
    nix = {
        settings = {
            download-buffer-size = 200000000;
            auto-optimise-store = true;
        };
    };

    time.timeZone = "Asia/Manila";
    i18n.defaultLocale = "en_US.UTF-8";

    # configure keymap in X11
    services.xserver.xkb = {
        layout = "us";
        variant = "";
    };
}
