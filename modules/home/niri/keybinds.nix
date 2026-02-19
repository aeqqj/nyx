{
    programs.niri.settings.binds = {
        "Mod+Return" = {
            action.spawn = "alacritty";
            hotkey-overlay.title = "Terminal: Alacritty";
        };

        "Mod+D" = {
            action.spawn = [
                "tofi-drun"
                "--drun-launch=true"
            ];
            hotkey-overlay.title = "Application runner: Tofi";
        };

        "XF86AudioRaiseVolume" = {
            allow-when-locked = true;
            action.spawn = [
                "wpctl"
                "set-volume"
                "@DEFAULT_AUDIO_SINK@"
                "0.1+"
            ];
        };
        "XF86AudioLowerVolume" = {
            allow-when-locked = true;
            action.spawn = [
                "wpctl"
                "set-volume"
                "@DEFAULT_AUDIO_SINK@"
                "0.1-"
            ];
        };
        "XF86AudioMute" = {
            allow-when-locked = true;
            action.spawn = [
                "wpctl"
                "set-mute"
                "@DEFAULT_AUDIO_SINK@"
                "toggle"
            ];
        };
        "XF86AudioMicMute" = {
            allow-when-locked = true;
            action.spawn = [
                "wpctl"
                "set-mute"
                "@DEFAULT_AUDIO_SOURCE@"
                "toggle"
            ];
        };

        "XF86MonBrightnessUp" = {
            allow-when-locked = true;
            action.spawn = [
                "brightnessctl"
                "--class=backlight"
                "set"
                "+10%"
            ];
        };
        "XF86MonBrightnessDown" = {
            allow-when-locked = true;
            action.spawn = [
                "brightnessctl"
                "--class=backlight"
                "set"
                "10%-"
            ];
        };

        "Mod+O" = {
            action.toggle-overview = [ ];
            repeat = false;
        };

        "Mod+A" = {
            action.toggle-overview = [ ];
            repeat = false;
        };

        "Mod+Q" = {
            action.close-window = [ ];
            repeat = false;
        };

        "Mod+H".action.focus-column-left = [ ];
        "Mod+J".action.focus-window-or-workspace-down = [ ];
        "Mod+K".action.focus-window-or-workspace-up = [ ];
        "Mod+L".action.focus-column-right = [ ];

        "Mod+Tab".action.focus-column-right = [ ];
        "Mod+Shift+Tab".action.focus-column-left = [ ];

        "Mod+Shift+H".action.move-column-left = [ ];
        "Mod+Shift+J".action.move-column-to-workspace-down = [ ];
        "Mod+Shift+K".action.move-column-to-workspace-up = [ ];
        "Mod+Shift+L".action.move-column-right = [ ];

        "Mod+U".action.move-workspace-down = [ ];
        "Mod+I".action.move-workspace-up = [ ];

        "Mod+1".action.focus-workspace = 1;
        "Mod+2".action.focus-workspace = 2;
        "Mod+3".action.focus-workspace = 3;
        "Mod+4".action.focus-workspace = 4;
        "Mod+5".action.focus-workspace = 5;
        "Mod+6".action.focus-workspace = 6;
        "Mod+7".action.focus-workspace = 7;
        "Mod+8".action.focus-workspace = 8;
        "Mod+9".action.focus-workspace = 9;

        "Mod+Shift+1".action.move-column-to-workspace = 1;
        "Mod+Shift+2".action.move-column-to-workspace = 2;
        "Mod+Shift+3".action.move-column-to-workspace = 3;
        "Mod+Shift+4".action.move-column-to-workspace = 4;
        "Mod+Shift+5".action.move-column-to-workspace = 5;
        "Mod+Shift+6".action.move-column-to-workspace = 6;
        "Mod+Shift+7".action.move-column-to-workspace = 7;
        "Mod+Shift+8".action.move-column-to-workspace = 8;
        "Mod+Shift+9".action.move-column-to-workspace = 9;

        "Mod+R".action.switch-preset-column-width = [ ];
        "Mod+Shift+R".action.switch-preset-window-height = [ ];

        "Mod+F".action.maximize-column = [ ];
        "Mod+Shift+F".action.fullscreen-window = [ ];

        "Mod+C".action.center-column = [ ];

        "Mod+Minus".action.set-column-width = "-10%";
        "Mod+Equal".action.set-column-width = "+10%";

        "Mod+Shift+Minus".action.set-window-height = "-10%";
        "Mod+Shift+Equal".action.set-window-height = "+10%";

        "Mod+W".action.toggle-window-floating = [ ];
        "Mod+Space".action.switch-focus-between-floating-and-tiling = [ ];

        "Print".action.screenshot = [ ];
        "Mod+Shift+S".action.screenshot = [ ];
        "Ctrl+Print".action.screenshot-screen = [ ];
        "Alt+Print".action.screenshot-window = [ ];

        # "Mod+Escape".hotkey-overlay.skip-at-startup = "true"; doesn't seem to work

        "Mod+Shift+M".action.quit = [ ];

        "Mod+Shift+P".action.spawn = [ "systemctl suspend && hyprlock" ];
    };
}
