{
    inputs,
    config,
    pkgs,
    ...
}:

{
    imports = [
        inputs.nixvim.homeModules.nixvim
        ./plugins
        ./core
    ];

    programs.nixvim = {
        extraConfigLua = ''
            require('lackluster').setup({
              tweak_background = {
                normal = "#101010",
              }
            })

            require('fzf-lua').setup({
              winopts = {
                preview = {
                  hidden = true
                },
              }

            })

            vim.cmd('colorscheme lackluster-hack')
            vim.cmd(':hi statusline guibg=NONE')

            vim.opt.path:append("**")
            vim.opt.wildignore:append({ "*/node_modules/*" })
        '';

        globals = {
            mapleader = " ";
            maplocalleader = " ";
        };

        enable = true;
        defaultEditor = true;

        viAlias = true;
        vimAlias = true;

        extraPlugins = with pkgs.vimPlugins; [
            lackluster-nvim
        ];
    };
}
