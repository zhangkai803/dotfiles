-- 基础配置
require("basic")

-- 键位
require("keybindings")

-- 插件管理
require("plugins")

-- 插件自定义配置
require('plugin-config/nvim-tree')
require('plugin-config/bufferline')
require('plugin-config/telescope')

-- LSP
require('lsp/setup')

-- 主题
vim.cmd("colorscheme onedark")
