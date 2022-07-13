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

vim.call('plug#end')
