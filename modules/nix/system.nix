
{
  nix = {
    settings = {
      download-buffer-size = 200000000;
      auto-optimise-store = true;
    };
  };

  time.timeZone = "Asia/Manila";
  i18n.defaultLocale = "en_PH.UTF-8";
  i18n.extraLocaleSettings = {
    LC_ADDRESS = "fil_PH";
    LC_IDENTIFICATION = "fil_PH";
    LC_MEASUREMENT = "fil_PH";
    LC_MONETARY = "fil_PH";
    LC_NAME = "fil_PH";
    LC_NUMERIC = "fil_PH";
    LC_PAPER = "fil_PH";
    LC_TELEPHONE = "fil_PH";
    LC_TIME = "fil_PH";
  };

  # configure keymap in X11
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };
}

