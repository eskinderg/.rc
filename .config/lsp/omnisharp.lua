-- 1. Setup global keymaps and on-attach logic using LspAttach autocommand
vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    local bufnr = args.buf
    local opts = { noremap = true, silent = true, buffer = bufnr }

    -- Global diagnostics
    vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, opts)
    vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
    vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
    vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, opts)

    -- Buffer-specific LSP standard mappings
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', '<c-]>', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
    vim.keymap.set('n', '<leader><CR>', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', '<leader>r', vim.lsp.buf.references, opts)
    vim.keymap.set('n', '<leader>==', function() vim.lsp.buf.format({ async = true }) end, opts)
    
    -- Visual range formatting (modern alternative to deprecated range_formatting)
    vim.keymap.set('v', '<leader>=', vim.lsp.buf.format, opts)
  end,
})

-- 2. Define completion capabilities from nvim-cmp
local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- 3. Set up variables for OmniSharp binary paths
local pid = vim.fn.getpid()
local omnisharp_bin = "/home/esk/.cache/omnisharp-vim/omnisharp-roslyn/OmniSharp"

-- 4. Register OmniSharp configuration natively
vim.lsp.config('omnisharp', {
  cmd = { omnisharp_bin, "--languageserver", "--hostPID", tostring(pid) },
  capabilities = capabilities,
  -- Root markers help OmniSharp find your project solution or project files
  root_markers = { '.git', '*.sln', '*.csproj' },
})

-- 5. Enable OmniSharp to auto-start on C# and relevant files
vim.lsp.enable('omnisharp')
