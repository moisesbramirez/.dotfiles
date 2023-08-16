return {
  { "nvim-lua/plenary.nvim", lazy = true },
  {
    "nvim-telescope/telescope.nvim",
    cmd = "Telescope",
    version = false, -- telescope did only one release, so use HEAD for now
    keys = {
      { "<leader>,", "<cmd>Telescope buffers show_all_buffers=true<cr>", desc = "Switch Buffer" },
      { "<leader>/", "<cmd>Telescope live_grep<cr>", desc = "Grep (root dir)" },
      { "<leader>:", "<cmd>Telescope command_history<cr>", desc = "Command History" },
      { "<leader><space>", "<cmd>Telescope git_files<cr>", desc = "Find Files (root dir)" },
      -- find
      { "<leader>ff", "<cmd>Telescope find_files hidden=true<cr>", desc = "Find ALL Files (root dir)" },
      -- search
      { "<leader>sa", "<cmd>Telescope autocommands<cr>", desc = "Auto Commands" },
      { "<leader>sb", "<cmd>Telescope current_buffer_fuzzy_find<cr>", desc = "Search in Buffer" },
      { "<leader>sg", "<cmd>Telescope ast_grep<cr>", desc = "Search via ast-grep" },
      { "<leader>sC", "<cmd>Telescope commands<cr>", desc = "Commands" },
      { "<leader>sd", "<cmd>Telescope diagnostics<cr>", desc = "Diagnostics" },
      { "<leader>sh", "<cmd>Telescope help_tags<cr>", desc = "Help Pages" },
      { "<leader>sH", "<cmd>Telescope highlights<cr>", desc = "Search Highlight Groups" },
      { "<leader>sk", "<cmd>Telescope keymaps<cr>", desc = "Key Maps" },
      { "<leader>sm", "<cmd>Telescope man_pages<cr>", desc = "Man Pages" },
      { "<leader>so", "<cmd>Telescope vim_options<cr>", desc = "Options" },
      { "<leader>sw", "<cmd>Telescope grep_string<cr>", desc = "Word (root dir)" },
      { "<leader>ss", "<cmd>lua require('telescope.builtin').lsp_document_symbols({ symbols = { 'Class', 'Function', 'Method', 'Constructor', 'Interface', 'Module', 'Struct', 'Trait', 'Field', 'Property' } })<cr>", desc = "Goto Symbol" },
    },
    opts = {
      defaults = {
        file_ignore_patterns = {
          ".*.min.js",
          ".*/vendor/.*",
        },
        layout_strategy = "vertical",
        layout_config = { prompt_position = "top", width = 0.95, height = 0.9 },
        mappings = {
          n = { ["kj"] = "close" },
        },
        preview = { timeout = 300 },
        prompt_prefix = "❯ ",
        selection_caret = "❯ ",
        sorting_strategy = "ascending",
        vimgrep_arguments = {
          "rg",
          "--color=never",
          "--no-heading",
          "--with-filename",
          "--line-number",
          "--column",
          "--smart-case",
          "--trim"
        },
      },
    },
  },
  {
    "nvim-telescope/telescope-fzf-native.nvim",
    build = "make",
    config = function()
      require("telescope").load_extension("fzf")
    end,
  },
  {
    "Marskey/telescope-sg",
    config = function()
      require("telescope").load_extension("ast_grep")
    end,
  }
}
