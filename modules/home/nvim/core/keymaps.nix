{
  programs.nixvim.keymaps = [
    {
      action = ":Oil<CR>";
      key = "<leader>e";
      mode = "n";
    }

    {
      action = ":Pick files<CR>";
      key = "<leader>ff";
      mode = "n";
    }

    {
      action = ":Pick grep<CR>";
      key = "<leader>fg";
      mode = "n";
    }

    {
      action = ":Pick help<CR>";
      key = "<leader>h";
      mode = "n";
    }

    {
      action = ":Mason<CR>";
      key = "<leader>m";
      mode = "n";
    }

    {
      action = ":lua vim.lsp.buf.format()<CR>";
      key = "<leader>lf";
      mode = "n";
    }

    {
      action = "\"_x";
      key = "<leader>m";
      mode = "n";
    }

    {
      action = ":nohl<CR>";
      key = "<leader>ch";
      mode = "n";
    }

    {
      action = "nzzzv";
      key = "n";
      mode = "n";
    }

    {
      action = "Nzzzv";
      key = "N";
      mode = "n";
    }
  ];
}
