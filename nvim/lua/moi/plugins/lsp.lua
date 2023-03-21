return {
  {
    "VonHeikemen/lsp-zero.nvim",
    branch = "v1.x",
    dependencies = {
      -- LSP Support
      {"neovim/nvim-lspconfig"},             -- Required
      {"williamboman/mason.nvim"},           -- Optional
      {"williamboman/mason-lspconfig.nvim"}, -- Optional

      -- Autocompletion
      {"hrsh7th/nvim-cmp"},         -- Required
      {"hrsh7th/cmp-nvim-lsp"},     -- Required
      {"hrsh7th/cmp-buffer"},       -- Optional
      {"hrsh7th/cmp-path"},         -- Optional
      {"saadparwaiz1/cmp_luasnip"}, -- Optional
      {"hrsh7th/cmp-nvim-lua"},     -- Optional

      -- Snippets
      {"L3MON4D3/LuaSnip"},             -- Required
      {"rafamadriz/friendly-snippets"}, -- Optional
    },
    config = function()
      vim.opt.signcolumn = "yes"
      local lsp = require("lsp-zero")
      lsp.preset("recommended")
      lsp.configure("stylelint_lsp", { filetypes = {"css", "less", "scss"} })
      lsp.setup()

      -- diagnostic config
      vim.diagnostic.config({
        virtual_text = true,
        signs = true,
        update_in_insert = false,
        underline = true,
        severity_sort = false,
        float = {
          focusable = false,
          style = "minimal",
          border = "",
          source = "always",
          header = "",
          prefix = "",
        },
      })
    end,
  },
  {
    "j-hui/fidget.nvim",
    config = function()
      require("fidget").setup({})
    end,
  },
}
