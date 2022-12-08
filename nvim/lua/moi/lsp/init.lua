local lspMappings = require("moi.mappings").lspMappings
local lspconfig = require("lspconfig")
local cmp = require("cmp")

cmp.setup({
  mapping = {
    ["<Tab>"] = cmp.mapping(cmp.mapping.select_next_item(), { "i", "s" }),
    ["<S-Tab>"] = cmp.mapping(cmp.mapping.select_prev_item(), { "i", "s" }),
  },
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'buffer' },
  })
})

local servers = { "ember", "eslint" }
local capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())

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
