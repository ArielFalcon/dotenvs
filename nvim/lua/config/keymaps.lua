-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua Add any additional keymaps here

-- Position cursor at the middle of the screen after scrolling half page
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Map Ctrl+b in insert mode to delete to the end of the word without leaving insert mode
vim.keymap.set("i", "<C-b>", "<C-o>de")

-- Map Ctrl+c to escape from other modes
vim.keymap.set({ "i", "n", "v" }, "<C-c>", [[<C-\><C-n>]])

----- Tmux Navigation ------
local nvim_tmux_nav = require("nvim-tmux-navigation")

vim.keymap.set("n", "<C-h>", nvim_tmux_nav.NvimTmuxNavigateLeft)
vim.keymap.set("n", "<C-j>", nvim_tmux_nav.NvimTmuxNavigateDown)
vim.keymap.set("n", "<C-k>", nvim_tmux_nav.NvimTmuxNavigateUp)
vim.keymap.set("n", "<C-l>", nvim_tmux_nav.NvimTmuxNavigateRight)
vim.keymap.set("n", "<C-\\>", nvim_tmux_nav.NvimTmuxNavigateLastActive)
vim.keymap.set("n", "<C-Space>", nvim_tmux_nav.NvimTmuxNavigateNext)

-- REQUIRED
local harpoon = require("harpoon")
harpoon:setup()

-- REQUIRED

-----  OIL -----
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- Delete all buffers but the current one --
vim.keymap.set(
  "n",
  "<leader>bq",
  '<Esc>:%bdelete|edit #|normal`"<Return>',
  { desc = "Delete other buffers but the current one" }
)

----- HARPOON 2 -----
vim.keymap.set("n", "<C-M-h>", function()
  harpoon:list():select(1)
end)

vim.keymap.set("n", "<C-M-j>", function()
  harpoon:list():select(2)
end)

vim.keymap.set("n", "<C-M-k>", function()
  harpoon:list():select(3)
end)

vim.keymap.set("n", "<C-M-l>", function()
  harpoon:list():select(4)
end)

----- Move lines up/down -----
-- Usa <leader>j / <leader>k para evitar conflictos con macOS Option key
vim.keymap.set("n", "<leader>j", "<cmd>m .+1<cr>==", { desc = "Move line down", silent = true })
vim.keymap.set("n", "<leader>k", "<cmd>m .-2<cr>==", { desc = "Move line up", silent = true })
-- Visual mode (mantiene la seleccion)
vim.keymap.set("v", "<leader>j", ":m '>+1<cr>gv=gv", { desc = "Move selection down", silent = true })
vim.keymap.set("v", "<leader>k", ":m '<-2<cr>gv=gv", { desc = "Move selection up", silent = true })

vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left<CR>")

-- Atajo rapido para recent files (equivalente a <leader>fr)
vim.keymap.set("n", "<leader>r", function()
  Snacks.picker.recent()
end, { desc = "Recent files", silent = true })
