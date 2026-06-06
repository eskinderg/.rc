-- 1. Setup global keymaps and on-attach buffer local logic using LspAttach
vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    local bufnr = args.buf
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    local opts = { noremap = true, silent = true, buffer = bufnr }

    -- Global diagnostics (Do not strictly need a buffer, but safe to set per-buffer)
    vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, opts)
    vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
    vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
    vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, opts)

    -- Buffer-specific LSP standard mappings (Using modern vim.keymap.set)
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', '<c-]>', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
    vim.keymap.set('n', '<leader><CR>', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', '<leader>r', vim.lsp.buf.references, opts)
    vim.keymap.set('n', '<leader>==', function() vim.lsp.buf.format({ async = true }) end, opts)
    -- Note: range_formatting is deprecated in modern Neovim; vim.lsp.buf.format handles ranges visually.
    vim.keymap.set('v', '<leader>=', vim.lsp.buf.format, opts)

    -- Override individual server capabilities if needed
    if client then
      client.server_capabilities.renameProvider = false
    end
  end,
})

-- 2. Define external plugin integration (e.g., cmp-nvim-lsp auto-completion capabilities)
local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- 3. Configuration Map for Servers
-- Native LSP needs explicit initialization commands ('cmd') if not using default files.
local server_configs = {
  ts_ls = { cmd = { 'typescript-language-server', '--stdio' } },
  cssls = { cmd = { 'vscode-css-language-server', '--stdio' } },
  eslint = { cmd = { 'vscode-eslint-language-server', '--stdio' } },
  html = { cmd = { 'vscode-html-language-server', '--stdio' } },
  vimls = { cmd = { 'vim-language-server', '--stdio' } },
  tailwindcss = { cmd = { 'tailwindcss-language-server', '--stdio' } }
}

-- 4. Register and Enable the configurations natively
local servers = {}
for name, config in pairs(server_configs) do
  table.insert(servers, name)
  vim.lsp.config(name, {
    cmd = config.cmd,
    capabilities = capabilities,
    -- Default fallback files to detect project roots if not specified per server
    root_markers = { '.git', 'package.json' }, 
  })
end

-- 5. Track files and auto-start servers
vim.lsp.enable(servers)
