{ inputs, lib, pkgs, ... }:

{
    programs.niri.settings = {
        input = {
            keyboard = {
                xkb.layout = "us";
                repeat-delay = 300;
                repeat-rate = 30;
                numlock = true;
            };

            touchpad = {
                tap = true;
                drag = true;
                natural-scroll = true;
                accel-profile = "flat";
                accel-speed = 0.6;
            };

            mouse = {
                accel-profile = "flat";
                accel-speed = 0.2;
                scroll-method = "no-scroll";
            };

            trackpoint = {
                accel-profile = "flat";
                accel-speed = 0.6;
            };
        };

        layout = {
            gaps = 8;

            background-color = "transparent";

            preset-column-widths = [
                { proportion = 0.3; }
                { proportion = 0.5; }
                { proportion = 0.7; }
                { proportion = 1.0; }
            ];

            preset-window-heights = [
                { proportion = 0.3; }
                { proportion = 0.5; }
                { proportion = 0.7; }
                { proportion = 1.0; }
            ];

            default-column-width = { };

            focus-ring.enable = false;

            border.enable = false;
        };

        outputs."eDP-1" = {
            enable = true;
            mode = {
                height = 1200;
                width = 1920;
                refresh = 60.0;
            };
            scale = 1.0;
        };

        spawn-at-startup = [
            { sh = "swaybg -i ~/pictures/wallpapers/whale.png -m fill";  }
            { argv = [ "waybar" ]; }
            { argv = [ "mako" ]; }
        ];

        screenshot-path = "~/pictures/screenshots/%Y-%m-%d_%H-%M-%S.png";

        prefer-no-csd = true;

        hotkey-overlay.skip-at-startup = true;

        animations = {
            slowdown = 0.4;
        };
    };
}
