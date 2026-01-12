{ pkgs, ... }:

{
  programs.nixvim.plugins.treesitter = {
    enable = true;

    nixvimInjections = true;

    settings = {
      install_dir.__raw = "vim.fs.joinpath(vim.fn.stdpath('data'), 'site')";
      
      highlight.enable = true;

      grammarPackages = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
        bash
        c
        cpp
        css
        dockerfile
        html
        java
        javadoc
        javascript
        json
        lua
        luadoc
        markdown
        nix
        tmux
        tsx
        typescript
        vim
        vimdoc
        vue
      ];
    };
  };
}
