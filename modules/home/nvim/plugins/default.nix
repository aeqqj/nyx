{
  imports = [
    ./emmet-ls.nix
    ./mini.nix
    ./oil.nix
    ./tmux.nix
    ./treesitter.nix
    ./ts-autotag.nix
  ];

  programs.nixvim.plugins = {
    lz-n.enable = true;

    web-devicons.enable = true;

    gitsigns = {
      enable = true;
      settings.signs = {
        add.text = "+";
        change.text = "~";
      };
    };
  };
}
