-- 1. Setup Mason package management infrastructure as normal
require('mason').setup()
require('mason-lspconfig').setup({
  ensure_installed = { 'clangd' },
  -- Optional: Tells mason-lspconfig to auto-trigger `vim.lsp.enable()` for installed servers
  automatic_enable = true, 
})

-- 2. Configure clangd settings natively via vim.lsp.config
-- (Instead of old require('lspconfig').clangd.setup)
vim.lsp.config('clangd', {
  -- Add any specific clangd parameters or options here
  init_options = {
    clangdFileStatus = true,
  },
  -- If you need custom execution switches, configure them here:
  -- cmd = { "clangd", "--background-index", "--clang-tidy" },
  root_markers = { '.git', 'compile_commands.json', 'compile_flags.txt' },
})

-- 3. Explicitly start monitoring clangd (if automatic_enable is not utilized)
vim.lsp.enable('clangd')

-- 4. Enable autocompletion & keymaps on LSP attach natively
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    local bufnr = ev.buf
    local opts = { noremap = true, silent = true, buffer = bufnr }

    -- Place your standard buffer keymaps or autocompletion adjustments here:
    -- vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    -- vim.keymap.set('n', '<c-]>', vim.lsp.buf.definition, opts)
  end
})
