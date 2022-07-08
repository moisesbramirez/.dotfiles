local moises = vim.api.nvim_create_augroup("moises", { clear = true })
local autocmd = vim.api.nvim_create_autocmd

autocmd("BufReadPost", {
  group = moises,
  pattern = "*.hbs",
  command = "set syntax=html",
})

autocmd("BufWritePre", {
  group = moises,
  pattern = "*",
  command = "%s/\\s\\+$//e",
})
