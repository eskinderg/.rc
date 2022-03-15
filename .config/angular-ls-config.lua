require'lspconfig'.angularls.setup{}

-- local configPath = vim.fn.stdpath("config")
-- local languageServerPath = configPath.."/languageserver"

-- local on_attach_common = function(client)
--     print("lsp started")
--     print(languageServerPath)
--     require'completion'.on_attach(client)
--     require'illuminate'.on_attach(client)
--     map_keys()
-- end


-- require'lspconfig'.angularls.setup{
--   on_attach = on_attach_common,
--   cmd = {"node", languageServerPath.."/node_modules/@angular/language-server/index.js", "--stdio", "--tsProbeLocations", languageServerPath, "--ngProbeLocations", languageServerPath},
--   on_new_config = function(new_config,new_root_dir)
--   new_config.cmd ={"node", languageServerPath.."/node_modules/@angular/language-server/index.js", "--stdio", "--tsProbeLocations", languageServerPath, "--ngProbeLocations", languageServerPath}
--   end,
-- }
