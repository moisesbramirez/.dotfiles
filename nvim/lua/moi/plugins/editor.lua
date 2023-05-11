return {
  {
    "folke/which-key.nvim",
    config = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
  },
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      options = {
        icons_enabled = false,
        component_separators = '',
        section_separators = '',
      },
      sections = {
        lualine_a = {},
        lualine_b = { "branch" },
        lualine_c = { "filename", "diagnostics" },
        lualine_x = { "encoding" },
        lualine_y = { "location", "progress"  },
        lualine_z = {}
      },
    },
    config = function(_, opts)
      require("lualine").setup(opts)
    end,
  },
}
