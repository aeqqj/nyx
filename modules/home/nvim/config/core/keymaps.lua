vim.g.mapleader = " "

-- source
vim.keymap.set('n', '<leader>u', ':update<CR> :source<CR>')

-- oil
vim.keymap.set('n', '<leader>e', ':Oil<CR>')

-- mini.pick
vim.keymap.set('n', '<leader>ff', ':Pick files<CR>')
vim.keymap.set('n', '<leader>fg', ':Pick grep<CR>')

-- mini.pick help
vim.keymap.set('n', '<leader>h', ':Pick help<CR>')

-- mason
vim.keymap.set('n', 'm', ':Mason<CR>')

-- format
vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format)

-- delete without saving
vim.keymap.set('n', 'x', '"_x')

-- clear highlights (search)
vim.keymap.set("n", "<leader>ch", ":nohl<CR>" )

-- center after search
vim.keymap.set('n', 'n', 'nzzzv', opts)
vim.keymap.set('n', 'N', 'Nzzzv', opts)
