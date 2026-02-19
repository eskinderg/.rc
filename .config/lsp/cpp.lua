require('mason').setup()
require('mason-lspconfig').setup({
  ensure_installed = {'clangd'},
})

-- Configure clangd and attach to buffers
local lspconfig = require('lspconfig')
lspconfig.clangd.setup({
    -- Add any specific clangd options here
})

-- Enable autocompletion on LSP attach
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    -- Buffer keymaps go here (see step 3)
  end
})
