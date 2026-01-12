{
  programs.nixvim = {
    options = {
      fileencoding = "utf-8";

      termguicolors = true;

      winborder = "rounded";

      smarttab = true;
      autoindent = true;
      smartindent = true;
      expandtab = true;

      tabstop = 4;
      shiftwidth = 4;

      number = true;
      relativenumber = true;

      scrolloff = 12;

      ignorecase = true;
      smartcase = true;

      hlsearch = true;

      wrap = false;

      undofile = true;
      swapfile = false;

      inccommand = "split";
      splitbelow = true;
      splitright = true;
      splitkeep = "cursor";
    };
  };
}
