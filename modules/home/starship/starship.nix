{ lib, ... }:

{
    programs.starship = {
        enableBashIntegration = true;
        settings = {
            add_newline = false;

            format = lib.concatStrings [
                "$directory"
                "$git_branch"
                "$git_status"
                "$character"
            ];


            character = {
                format = "[\\$](#aaaaaa) ";
            };

            directory = {
                style = "#555555";
                truncation_length = 1;
                truncation_symbol = "";
            };

            git_branch = {
                format = "[$branch]($style) ";
                style = "bold #7a7a7a";
            };

            git_status = {
                format = "$ahead_behind$all_status";
                ahead = "[⇡](bold green) ";
                behind = "[⇣](bold red) ";
                staged = "[+](green) ";
                deleted = "[x](red) ";
                renamed = "[»](purple) ";
                stashed = "[✭](cyan) ";
                untracked = "[?](white) ";
                modified = "[!](blue) ";
                conflicted = "[═](yellow) ";
                up_to_date = "";
            };

            line_break = {
                disabled = true;
            };
        };
    };
}
