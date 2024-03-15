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

      local signs = { Error = "E", Warn = "W", Hint = "H", Info = "I" }
      for type, icon in pairs(signs) do
        local hl = "DiagnosticSign" .. type
        vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
      end

      -- diagnostic config
      vim.diagnostic.config({
        severity_sort = true,
        signs = true,
        underline = true,
        update_in_insert = false,
        virtual_text = false,
        float = {
          focusable = true,
          header = "",
          scope = "cursor",
          severity_sort = true,
          show_header = false,
          source = "in_many",
          style = "minimal",
          width = 80,
        },
      })
    end,
  },
  {
    "j-hui/fidget.nvim",
    opts = {},
  },
}
