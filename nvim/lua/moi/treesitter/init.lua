require'nvim-treesitter.configs'.setup {
  ensure_installed = { "bash", "css", "glimmer", "go", "html", "javascript", "json", "ruby", "scss", "typescript" },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  indent = { enable = true },
}

