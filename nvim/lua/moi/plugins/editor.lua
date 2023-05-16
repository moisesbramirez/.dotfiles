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
  },
  {
    "max397574/better-escape.nvim",
    opts = {
      mapping = { "kj" },
      clear_empty_lines = true,
    },
  },
  {
    "rebelot/terminal.nvim",
    opts = {
      layout = {
        open_cmd = "float",
        width = 0.95,
        height = 0.9,
      }
    },
    config = function(_, opts)
      require("terminal").setup(opts)

      local lazygit = require("terminal").terminal:new({
        cmd = { "lazygit" },
        autoclose = true,
      })

      vim.env["GIT_EDITOR"] = "nvr -cc close -cc vsplit --remote-wait +'set bufhidden=wipe'"
      vim.api.nvim_create_user_command("Lazygit", function(args)
        lazygit.cwd = args.args and vim.fn.expand(args.args)
        lazygit:toggle(nil, true)
      end, { nargs = "?" })

      vim.keymap.set("n", "<leader>gl", "<cmd>Lazygit<cr>", {
        desc = "Open lazygit",
        noremap = true,
        silent = true
      })

      local term_map = require("terminal.mappings")
      vim.keymap.set("n", "<leader>to", term_map.toggle, { desc = "Terminal Open" })
   end
  },
}
