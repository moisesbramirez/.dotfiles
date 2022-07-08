vim.api.nvim_create_augroup("moises", { clear = true })
vim.api.nvim_create_autocmd("BufReadPost", {
  group = "moises",
  pattern = "*.hbs",
  command = "set syntax=html",
})
