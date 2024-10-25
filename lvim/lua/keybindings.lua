-- 保存本地变量
local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true }

-- 设置空格为 leader
vim.g.mapleader = " "

-- 设置 jj 为 ESC
map("i", "jj", "<ESC>", opt)

-- 保存 Ctrl+s
map("n", "<C-s>", ":w<CR>", opt)

-- nvim-tree
-- 文件树开/关 Ctrl+m
map("n", "<C-m>", ":NvimTreeToggle<CR>", opt)

-- buffline
-- 上一个TAB Ctrl+h
map("n", "<C-h>", ":BufferLineCyclePrev<CR>", opt)
-- 下一个TAB Ctrl+l
map("n", "<C-l>", ":BufferLineCycleNext<CR>", opt)

-- telescope
-- 主面板 leader+t
map('n', '<leader>t', ":Telescope<CR>", opt)
