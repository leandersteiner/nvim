vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use({ 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' })
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        requires = { {'nvim-lua/plenary.nvim'} }
      }

      use('nvim-treesitter/nvim-treesitter')

      use('nvim-tree/nvim-tree.lua')

      use('akinsho/toggleterm.nvim')

      use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
      }

      use({
        'rose-pine/neovim', 
        as = 'rose-pine',
        config = function() 
            vim.cmd('colorscheme rose-pine')
        end 
    })
end)