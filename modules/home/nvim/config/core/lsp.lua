vim.lsp.enable({ 'bashls', 'clangd', 'cssls', 'docker-language-server', 'html', 'jdtls', 'jsonls', 'lua_ls', 'marksman', 'nixd', 'tailwindcss', 'vtsls', })

vim.lsp.config('clangd', {
    cmd = {
        "clangd",
        "--background-index",
        "--cross-file-rename",
        "--fallback-style=webkit",
        "--log=verbose",
    },
})
