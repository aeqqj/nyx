{
    programs.nixvim.keymaps = [
        {
            action = ":Oil<CR>";
            key = "<leader>e";
            mode = "n";
        }

        {
            action = ":FzfLua files<CR>";
            key = "<leader>ff";
            mode = "n";
        }

        {
            action = ":FzfLua grep<CR>";
            key = "<leader>fg";
            mode = "n";
        }

        {
            action = ":Mason<CR>";
            key = "<leader>m";
            mode = "n";
        }

        {
            action = ":lua require('conform').format()<CR>";
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

        {
            action = "\"+y";
            key = "<leader>y";
            mode = ["n" "v"];
        }

        {
            action = "\"+p";
            key = "<leader>p";
            mode = ["n" "v"];
        }
    ];
}
