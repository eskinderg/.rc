-- error-lens.lua
local present, error_lens = pcall(require, "error-lens")
if not present then
  return
end
-- to hold both error-lens and gitgutter
vim.opt.signcolumn = "auto:2"

-- error_lens.setup({
--   enabled = true,
--   auto = true,         -- refresh on LSP events
--   prefix = "⛔",        -- symbol before diagnostic (for virtual text)
--   severity_sort = true,
--   -- signs = true,
--   -- underline = true,
--   update_in_insert = false,
--   virtual_text = true,
--   virtual_lines = false,
--   float = false,
-- })

vim.diagnostic.config({
  virtual_text = false,
  underline = false,
  update_in_insert = false,
  severity_sort = true,
  signs = {
    text = {
      -- [vim.diagnostic.severity.ERROR] = "⛔",
      [vim.diagnostic.severity.ERROR] = "●",
      [vim.diagnostic.severity.WARN]  = "⚠️",
      [vim.diagnostic.severity.INFO]  = "ℹ️",
      [vim.diagnostic.severity.HINT]  = "💡",
    },
  },
})

-- vim.api.nvim_create_autocmd({ "DiagnosticChanged" }, {
--   callback = function()
--     require("error-lens").refresh()
--   end,
-- })

-- Diagnostic highlight groups
-- vim.api.nvim_set_hl(0, "DiagnosticError", { fg = "#FF5555" })
-- vim.api.nvim_set_hl(0, "DiagnosticWarn",  { fg = "#F1FA8C" })
-- vim.api.nvim_set_hl(0, "DiagnosticInfo",  { fg = "#8BE9FD" })
-- vim.api.nvim_set_hl(0, "DiagnosticHint",  { fg = "#50FA7B" })

-- Underline styles
-- vim.api.nvim_set_hl(0, "DiagnosticUnderlineError", { undercurl = true, sp = "#FF5555" })
-- vim.api.nvim_set_hl(0, "DiagnosticUnderlineWarn",  { undercurl = true, sp = "#F1FA8C" })
-- vim.api.nvim_set_hl(0, "DiagnosticUnderlineInfo",  { undercurl = true, sp = "#8BE9FD" })
-- vim.api.nvim_set_hl(0, "DiagnosticUnderlineHint",  { undercurl = true, sp = "#50FA7B" })
-- Underline diagnostics with red squiggly lines
-- vim.api.nvim_set_hl(0, "DiagnosticUnderlineError", { undercurl = true, sp = "#ff5555" })
-- vim.api.nvim_set_hl(0, "DiagnosticUnderlineWarn",  { undercurl = true, sp = "#f1fa8c" })
-- vim.api.nvim_set_hl(0, "DiagnosticUnderlineInfo",  { undercurl = true, sp = "#8be9fd" })
-- vim.api.nvim_set_hl(0, "DiagnosticUnderlineHint",  { undercurl = true, sp = "#50fa7b" })
