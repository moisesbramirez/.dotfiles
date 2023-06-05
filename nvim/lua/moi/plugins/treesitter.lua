return {
  {
    "nvim-treesitter/nvim-treesitter-context",
    dependencies = {
      {"nvim-treesitter/nvim-treesitter"},
    }
  },
  {
    "nvim-treesitter/nvim-treesitter-textobjects",
    dependencies = {
      {"nvim-treesitter/nvim-treesitter"},
    }
  },
  {
    "nvim-treesitter/nvim-treesitter",
    version = false, -- last release is way too old and doesn't work on Windows
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    keys = {
      { "<c-space>", desc = "Increment selection" },
      { "<bs>", desc = "Schrink selection", mode = "x" },
    },
    opts = {
      highlight = { enable = true, additional_vim_regex_highlighting = false },
      indent = { enable = true },
      context_commentstring = { enable = true, enable_autocmd = false },
      ensure_installed = {
        "bash",
        "css",
        "git_config",
        "gitcommit",
        "gitignore",
        "glimmer",
        "go",
        "help",
        "html",
        "javascript",
        "json",
        "jsonc",
        "lua",
        "markdown",
        "markdown_inline",
        "regex",
        "ruby",
        "scss",
        "typescript",
        "vim",
        "yaml",
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = "<nop>",
          node_decremental = "<bs>",
        },
      },
      textobjects = {
        move = { enable = true },
        select = { enable = true },
        swap = { enable = true },
      },
    },
    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)
    end,
  },
}
