local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

-- MORE POWER
Plug('nvim-treesitter/nvim-treesitter', {
  ['do'] = function()
    vim.cmd('TSUpdate')
  end
})
Plug('nvim-lua/plenary.nvim')
Plug('nvim-telescope/telescope.nvim')

-- COLORS/THEMES
Plug('ii14/onedark.nvim')

-- LSP
Plug('neovim/nvim-lspconfig')
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/nvim-cmp'

vim.call('plug#end')
