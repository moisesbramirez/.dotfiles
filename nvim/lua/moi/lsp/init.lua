local lspMappings = require("moi.mappings").lspMappings
local lspconfig = require("lspconfig")
local cmp = require("cmp")

cmp.setup({
  mapping = cmp.mapping.preset.insert({
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<CR>'] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    },
    ["<Tab>"] = cmp.mapping(cmp.mapping.select_next_item(), { "i", "s" }),
    ["<S-Tab>"] = cmp.mapping(cmp.mapping.select_prev_item(), { "i", "s" }),
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'buffer' },
  })
})

local servers = { "ember", "eslint", "tsserver" }
local capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = lspMappings,
    capabilities = capabilities
  }
end

lspconfig.solargraph.setup {
  cmd = {
    "/Users/moises/.gem/ruby/2.6.0/gems/solargraph-0.47.2/bin/solargraph", "stdio",
  },
}
