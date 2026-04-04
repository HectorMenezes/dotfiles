-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.4',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    -- use({ 'rose-pine/neovim', as = 'rose-pine' , config = function() vim.cmd('colorscheme rose-pine') end})
    use({ 'nyngwang/nvimgelion', as = 'nvimgelion' })

    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use('theprimeagen/harpoon')
    use('mbbill/undotree')
    use('tpope/vim-fugitive')
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }
    use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })
    -- LSP
    use { 'neovim/nvim-lspconfig' }
    use {
        'williamboman/mason.nvim',
        run = function() pcall(vim.cmd, 'MasonUpdate') end,
    }
    use { 'williamboman/mason-lspconfig.nvim' }

    -- Autocompletion
    use { 'hrsh7th/nvim-cmp' }
    use { 'hrsh7th/cmp-nvim-lsp' }
    use { 'L3MON4D3/LuaSnip' }
    -- java	
    use 'mfussenegger/nvim-dap'
    use 'mfussenegger/nvim-jdtls'

    -- Database
    use { 'tpope/vim-dadbod' }
    use { 'kristijanhusak/vim-dadbod-ui' }
    use { 'kristijanhusak/vim-dadbod-completion' }
    use {
        "hrsh7th/nvim-cmp",
        requires = {
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-nvim-lsp"
        }
    }
    -- Claude Code
    use { 'folke/snacks.nvim' }
    use {
        'coder/claudecode.nvim',
        requires = { 'folke/snacks.nvim' },
    }
end)


