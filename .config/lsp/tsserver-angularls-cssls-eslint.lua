nvim_lsp = require('lspconfig')

local capabilities = require('cmp_nvim_lsp').default_capabilities()

local servers = { 'ts_ls', 'cssls', 'eslint', 'html', 'vimls', 'tailwindcss' }

local on_attach = function(client, bufnr)
  local opts = { noremap=true, silent=true }
  vim.api.nvim_set_keymap('n', '<leader>d', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
  vim.api.nvim_set_keymap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
  vim.api.nvim_set_keymap('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
  vim.api.nvim_set_keymap('n', '<leader>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<c-]>', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader><CR>', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>r', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>==', '<cmd>lua vim.lsp.buf.format { async = true }<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>=', '<cmd>lua vim.lsp.buf.range_formatting()<CR>', opts)

  client.server_capabilities.renameProvider = false

  vim.api.nvim_create_autocmd("DiagnosticChanged", {
    buffer = bufnr,
    callback = function()
      vim.api.nvim_create_autocmd("DiagnosticChanged", {
        buffer = bufnr,
        callback = function()
          require("error-lens").setup({})
        end,
      })
    end,
  })
end

for _,lsp in ipairs(servers) do
  nvim_lsp[lsp].setup{
    on_attach = on_attach,
    capabilities = capabilities
  }
end
