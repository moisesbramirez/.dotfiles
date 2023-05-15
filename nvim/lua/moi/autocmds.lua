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

autocmd("BufReadPost", {
  group = moi,
  pattern = "*.git/COMMIT_EDITMSG",
  command = "set spell!",
})

autocmd({ "WinEnter", "BufWinEnter", "TermOpen" }, {
  callback = function(args)
    if vim.startswith(vim.api.nvim_buf_get_name(args.buf), "term://") then
      vim.cmd("startinsert")
    end
  end,
})
