--- Select all
vim.keymap.set("n", "<C-a>", "ggVG", { desc = "Select all" })

-- Save file
vim.keymap.set({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save file" })

-- yank system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set({ "n", "v" }, "<leader>Y", [["+Y]])

-- paste keeps buffer on replace
vim.keymap.set("x", "<leader>P", [["_dP]])
vim.keymap.set({ "n", "v" }, "<leader>p", [["+p]], { desc = "Paste from clipboard" })

-- delete to void
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- presenter mode
vim.keymap.set("n", "<leader>;;", "<cmd>set background=light<cr><cmd>colorscheme monokai-nightasty<cr>")
vim.keymap.set("n", "<leader>;;;", "<cmd> set background=dark<cr><cmd>colorscheme monokai-nightasty<cr>")

-- Better indenting (keeps visual selection)
vim.keymap.set("v", "<", "<gv", { desc = "Indent left" })
vim.keymap.set("v", ">", ">gv", { desc = "Indent right" })

-- Quick save and quit
vim.keymap.set("n", "<leader>w", "<cmd>w<cr>", { desc = "Save file" })
vim.keymap.set("n", "<leader>q", "<cmd>q<cr>", { desc = "Quit" })
vim.keymap.set("n", "<leader>Q", "<cmd>qa!<cr>", { desc = "Quit all force" })

vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic' })
vim.keymap.set('n', '[d', function() vim.diagnostic.jump({ count = -1 }) end, { desc = 'Previous diagnostic' })
vim.keymap.set('n', ']d', function() vim.diagnostic.jump({ count = 1 }) end, { desc = 'Next diagnostic' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Diagnostic loclist' })
