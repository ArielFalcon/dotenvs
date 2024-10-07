-- Indentar con Tab
vim.api.nvim_set_keymap('v', '<Tab>', '>gv', { noremap = true, silent = true })

-- Desindentar con Shift + Tab
vim.api.nvim_set_keymap('v', '<S-Tab>', '<gv', { noremap = true, silent = true })

vim.api.nvim_set_keymap('i', '<Tab>', '<Tab>', { noremap = false, silent = true })

