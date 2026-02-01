{ pkgs, ... }:

{
    fonts = {
        fontconfig.enable = true;
        packages = with pkgs; [
            dejavu_fonts
            fira-code
            fira-code-symbols
            font-awesome
            nerd-fonts.hack
            noto-fonts
            noto-fonts-color-emoji
            noto-fonts-cjk-sans
            noto-fonts-cjk-serif
            noto-fonts-monochrome-emoji
        ];
    };
}
