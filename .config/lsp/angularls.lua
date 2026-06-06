-- 1. Setup the LspAttach hook specifically for angularls keymaps and capabilities
vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    local bufnr = args.buf
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    
    -- Only run this code if the attaching server is angularls
    if client and client.name == 'angularls' then
      local opts = { noremap = true, silent = true, buffer = bufnr }

      -- Diagnostics mappings
      vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, opts)
      vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
      vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
      vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, opts)

      -- Standard LSP mappings
      vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
      vim.keymap.set('n', '<c-]>', vim.lsp.buf.definition, opts)
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
      vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
      vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
      vim.keymap.set('n', '<leader><CR>', vim.lsp.buf.code_action, opts)
      vim.keymap.set('n', '<leader>r', vim.lsp.buf.references, opts)
      vim.keymap.set('n', '<leader>==', function() vim.lsp.buf.format({ async = true }) end, opts)
      
      -- Range formatting fallback using visual selections
      vim.keymap.set('v', '<leader>=', vim.lsp.buf.format, opts)

      -- Force allow renaming support for this client
      client.server_capabilities.renameProvider = true
    end
  end,
})

-- 2. Capabilities integration
local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- 3. Native configuration registration with dynamic path resolution
vim.lsp.config('angularls', {
  cmd = { 'ngserver', '--stdio' }, -- Required structural fallback string
  capabilities = capabilities,
  root_markers = { 'angular.json', 'nx.json', 'package.json' },
  on_new_config = function(new_config, new_root_dir)
    new_config.cmd = {
      "node",
      new_root_dir .. "/node_modules/@angular/language-server/bin/ngserver",
      "--stdio",
      "--tsProbeLocations", new_root_dir .. "/node_modules",
      "--ngProbeLocations", new_root_dir .. "/node_modules",
      "--angularCoreVersion", "20.1.4",
    }
  end,
})

-- 4. Auto-trigger monitoring engine
vim.lsp.enable('angularls')
