-- Register the yamlls configuration natively
vim.lsp.config('yamlls', {
  cmd = { 'yaml-language-server', '--stdio' },
  -- Optional: Inherit the same capabilities from nvim-cmp used by your other servers
  capabilities = require('cmp_nvim_lsp').default_capabilities(),
  root_markers = { '.git' },
})

-- Enable yamlls to auto-start on YAML file buffers
vim.lsp.enable('yamlls')
