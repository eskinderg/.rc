local capabilities = require('cmp_nvim_lsp').default_capabilities()

require'lspconfig'.jsonls.setup{
  on_attach = on_attach,
  capabilities = capabilities,

  settings = {
    json = {
      schemas = {
        {
          fileMatch = { 'package.json' },
          url = 'https://json.schemastore.org/package.json',
        },
        {
          fileMatch = { 'tsconfig.json', 'tsconfig.*.json' },
          url = 'http://json.schemastore.org/tsconfig',
        },
      },
    },
  }
}
