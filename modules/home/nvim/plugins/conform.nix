{ pkgs, lib, ... }:

{
    programs.nixvim.plugins = {
        conform-nvim = {
            enable = true;
            settings = {
                formatters_by_ft = {
                    "*" = [ "codespell" ];
                    "_" = [ "trim_whitespace" ];

                    javascript = [
                        "prettier"
                    ];
                    json = [ "jq" ];
                    lua = [ "stylua" ];
                    nix = [ "nixfmt" ];
                    sh = [
                        "shellcheck"
                        "shfmt"
                    ];
                };

                formatters = {
                    codespell = {
                        command = lib.getExe pkgs.codespell;
                    };

                    jq = {
                        command = lib.getExe pkgs.jq;
                    };

                    stylua = {
                        command = lib.getExe pkgs.stylua;
                    };

                    prettier = {
                        command = lib.getExe pkgs.prettier;
                    };

                    nixfmt = {
                        command = lib.getExe pkgs.nixfmt;
                        append_args = [ "--indent=4" ];
                    };

                    shellcheck = {
                        command = lib.getExe pkgs.shellcheck;
                    };

                    shfmt = {
                        command = lib.getExe pkgs.shfmt;
                    };
                };
            };
        };
    };
}
