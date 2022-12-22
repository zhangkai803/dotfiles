-- 保存本地变量
local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true }

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
-- 文件查找 Ctrl+p
map('n', '<SPACE>', ":Telescope<CR>", opt)
map('n', '<C-p>', ":Telescope find_files<CR>", opt)
