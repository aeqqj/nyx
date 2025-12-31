{ config, pkgs, ... }:

{
  programs.neovim = {
    enable = true;
    defaultEditor = true;

    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;


    extraLuaConfig = ''
      ${builtins.readFile ./config/core/options.lua}
      ${builtins.readFile ./config/core/keymaps.lua}

      vim.cmd('colorscheme lackluster-hack')
      vim.cmd(':hi statusline guibg=NONE')
    '';

    plugins = with pkgs.vimPlugins; [
      {
        plugin = lackluster-nvim;
	    type = "lua";
	    config = "require('lackluster').setup();";
      }

      {
        plugin = nvim-lspconfig;
	    type = "lua";
	    config = builtins.readFile ./config/core/lsp.lua;
      }

      {
        plugin = mini-pairs;
	    type = "lua";
	    config = "require('mini.pairs').setup();";
      }

      {
        plugin = mini-pick;
	    type = "lua";
	    config = "require('mini.pick').setup();";
      }

      {
        plugin = nvim-ts-autotag;
	    type = "lua";
	    config = "require('nvim-ts-autotag').setup();";
      }

      {
        plugin = oil-nvim;
	    type = "lua";
	    config = "require('oil').setup();";
      }

      {
        plugin = (nvim-treesitter.withPlugins (p: [
          p.tree-sitter-bash
          p.tree-sitter-c
          p.tree-sitter-css
          p.tree-sitter-dockerfile
          p.tree-sitter-html
          p.tree-sitter-java
          p.tree-sitter-javadoc
          p.tree-sitter-javascript
          p.tree-sitter-json
          p.tree-sitter-lua
          p.tree-sitter-luadoc
          p.tree-sitter-markdown
          p.tree-sitter-nix
          p.tree-sitter-tmux
          p.tree-sitter-tsx
          p.tree-sitter-typescript
          p.tree-sitter-vim
          p.tree-sitter-vimdoc
          p.tree-sitter-vue
        ]));
      }

      vim-tmux-navigator
    ];

    extraPackages = with pkgs; [
      tree-sitter

      # language servers
      bash-language-server
      clang-tools
      docker-language-server
      superhtml
      jdt-language-server
      lua-language-server
      marksman
      nixd
      tailwindcss-language-server
      vscode-css-languageserver
      vscode-json-languageserver
      vtsls
    ];
  };  
}
