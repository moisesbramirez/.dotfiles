local moi = vim.api.nvim_create_augroup("moi", { clear = true })
local autocmd = vim.api.nvim_create_autocmd

autocmd("BufWritePre", {
  group = moi,
  pattern = "*",
  command = "%s/\\s\\+$//e",
})

autocmd("BufWritePre", {
  group = moi,
  pattern = "*.ts,*.js",
  command = "EslintFixAll",
})

autocmd("BufReadPost", {
  group = moi,
  pattern = "*.t",
  command = "set filetype=ruby",
})
