-- 基础配置
require("basic")

-- 键位
require("keybindings")

-- 插件管理
require("plugins")

-- 插件自定义配置
require('plugin-config/nvim-tree')
require('plugin-config/bufferline')

-- LSP
require('lsp/setup')

vim.cmd("colorscheme onedarkpro")
