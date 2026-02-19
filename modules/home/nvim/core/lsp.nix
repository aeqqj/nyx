{
    programs.nixvim.plugins = {
        lsp = {
            enable = true;
            servers = {
                bashls.enable = true;

                clangd = {
                    enable = true;
                    cmd = [
                        "clangd"
                        "--background-index"
                        "--cross-file-rename"
                        "--fallback-style=webkit"
                        "--log=verbose"
                    ];
                };

                cssls.enable = true;
                docker_language_server.enable = true;
                emmet_language_server = {
                    enable = true;
                    settings = {
                        ft = [
                            "css"
                            "html"
                            "javascript"
                            "javascriptreact"
                            "sass"
                            "scss"
                            "typescriptreact"
                            "vue"
                        ];
                    };
                };

                html.enable = true;
                jdtls.enable = true;
                jsonls.enable = true;
                lua_ls.enable = true;
                marksman.enable = true;
                nixd.enable = true;
                pyright.enable = true;
                roslyn.enable = true;
                tailwindcss.enable = true;
                ts_ls.enable = true;
                vtsls = {
                    enable = true;
                    autostart = true;
                };
            };
        };
    };
}
