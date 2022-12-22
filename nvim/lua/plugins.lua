return require('packer').startup(function()
    -- Packer can manage itself 插件管理器
    use 'wbthomason/packer.nvim'

    -- onedarkpro theme 主题
    use "olimorris/onedarkpro.nvim"

    -- nvim-tree 文件树
    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons'
    }

    -- bufferline 分页栏
    use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}

    -- lspconfig installer 语言服务器
    use({ "williamboman/mason.nvim" })
    use({ "williamboman/mason-lspconfig.nvim" })

    -- telescope 全功能搜索
    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.0',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- lualine 状态栏
    use {
        'nvim-lualine/lualine.nvim',
        requires = 'kyazdani42/nvim-web-devicons'
    }

    -- floating terminal 内部浮动终端
    use 'akinsho/toggleterm.nvim'

    -- treesitter
    use 'nvim-treesitter/nvim-treesitter'

    -- alpha 欢迎页
    use { 'goolord/alpha-nvim' }

    -- project 项目管理
    use { "ahmedkhalf/project.nvim" }
end)
