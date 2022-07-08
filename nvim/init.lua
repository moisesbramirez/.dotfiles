require('opts')
require('plugins')
require('mappings')
require('aus')

vim.cmd("colorscheme " .. "onedark")

require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
  }
}
