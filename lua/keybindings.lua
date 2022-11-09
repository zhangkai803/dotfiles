-- 保存本地变量
local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true }

-- 保存
map("n", "<C-s>", ":w<CR>", opt)

-- nvim-tree
-- 开/关
map("n", "<C-m>", ":NvimTreeToggle<CR>", opt)

-- buffline
-- 上一个TAB
map("n", "<C-h>", ":BufferLineCyclePrev<CR>", opt)
-- 下一个TAB
map("n", "<C-l>", ":BufferLineCycleNext<CR>", opt)

-- telescope
map('n', '<C-p>', ":Telescope find_files<CR>", opt)
