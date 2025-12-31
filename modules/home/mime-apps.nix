{ globals, ... }:

{
  xdg.mimeApps = {
    enable = true;
    defaultApplications = {
      "text/plain" = "nvim.desktop";
      "text/html" = "waterfox.desktop";

      "image/png" = "imv.desktop";
      "image/jpeg" = "imv.desktop";
      "image/webp" = "imv.desktop";
      "image/gif" = "imv.desktop";

      "inode/directory" = "nautilus.desktop";

      "video/mp4" = "mpv.desktop";
      "video/x-matroska" = "mpv.desktop";
      "video/webm" = "mpv.desktop";
      "video/x-msvideo" = "mpv.desktop";

      "x-scheme-handler/http" = "waterfox.desktop";
      "x-scheme-handler/https" = "waterfox.desktop";
      "x-scheme-handler/about" = "waterfox.desktop";
      "x-scheme-handler/unknown" = "waterfox.desktop";
      "x-scheme-handler/discord" = "vesktop.desktop";
    };
  };
}
