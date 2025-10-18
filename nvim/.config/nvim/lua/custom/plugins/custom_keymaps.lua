vim.keymap.set('n', '<C-Left>', '<C-w>h', { desc = 'Move to left window' })
vim.keymap.set('n', '<C-Down>', '<C-w>j', { desc = 'Move to window below' })
vim.keymap.set('n', '<C-Up>', '<C-w>k', { desc = 'Move to window above' })
vim.keymap.set('n', '<C-Right>', '<C-w>l', { desc = 'Move to right window' })

-- Optional: Also keep the traditional Ctrl+hjkl mappings
vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'Move to left window' })
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = 'Move to window below' })
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = 'Move to window above' })
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'Move to right window' })

-- Bonus: Resize windows with Ctrl+Shift+Arrow keys
vim.keymap.set('n', '<C-S-Up>', ':resize +2<CR>', { desc = 'Increase window height' })
vim.keymap.set('n', '<C-S-Down>', ':resize -2<CR>', { desc = 'Decrease window height' })
vim.keymap.set('n', '<C-S-Left>', ':vertical resize -2<CR>', { desc = 'Decrease window width' })
vim.keymap.set('n', '<C-S-Right>', ':vertical resize +2<CR>', { desc = 'Increase window width' })

return {}
