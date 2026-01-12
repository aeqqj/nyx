{ inputs, config, pkgs, ... }:

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

      vim.cmd('colorscheme lackluster-hack')
      vim.cmd(':hi statusline guibg=NONE')
      vim.api.nvim_set_hl(0, "MiniPickNormal", {bg = "#101010"})
      vim.api.nvim_set_hl(0, "MiniPickBorder", {bg = bg, fg = "#444444"})

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
