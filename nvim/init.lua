require "moi.plugins"
require "moi.options"
require "moi.mappings"
-- require "moi.commands"
-- require "moi.completion"
-- require "moi.colors"

require "moi.autocmds"
-- require "moi.folds"
-- require "moi.filetree"
-- require "moi.statusline"
-- require "moi.treesitter"
-- require "moi.formatting"
-- require "moi.lsp"

vim.cmd("colorscheme " .. "onedark")

require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
  }
}
