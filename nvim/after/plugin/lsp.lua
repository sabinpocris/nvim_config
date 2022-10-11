-- Set up lspconfig.
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

--require'lspconfig'.[LANG].setup{
--    capabilities = capabilities
--}

require'lspconfig'.pyright.setup{
    capabilities = capabilities
}

require'lspconfig'.clangd.setup{
    capabilities = capabilities
}
