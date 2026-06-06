vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

local function on_attach(bufnr)
  local api = require('nvim-tree.api')

  local function opts(desc)
    return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  vim.keymap.set('n',  'o',             api.node.open.edit,                 opts('Open'))
  vim.keymap.set('n',  'go',            api.node.open.preview,              opts('Open Preview'))
  vim.keymap.set('n',  'O',             api.tree.expand_all,                opts('Expand All'))
  vim.keymap.set('n',  'u',             api.tree.change_root_to_parent,     opts('Up'))
  vim.keymap.set('n',  's',             api.node.open.horizontal,           opts('Open: Horizontal Split'))
  vim.keymap.set('n',  'v',             api.node.open.vertical,             opts('Open: Vertical Split'))
  vim.keymap.set('n',  'c',             api.fs.rename_sub,                  opts('Rename: Omit Filename'))
  vim.keymap.set('n',  'r',             api.fs.rename,                      opts('Rename'))
  vim.keymap.set('n',  'C',             api.tree.change_root_to_node,       opts('CD'))
  vim.keymap.set('n',  'R',             api.tree.reload,                    opts('Refresh'))
  vim.keymap.set('n',  'p',             api.node.navigate.parent,           opts('Parent Directory'))
  vim.keymap.set('n',  'x',             api.tree.close,                     opts('Close'))
  vim.keymap.set('n',  'X',             api.tree.collapse_all,              opts('Collapse'))
  vim.keymap.set('n',  'H',             api.tree.toggle_hidden_filter,      opts('Toggle Dotfiles'))
  vim.keymap.set('n',  'I',             api.tree.toggle_custom_filter,      opts('Toggle Hidden'))
  vim.keymap.set('n',  'd',             api.fs.remove,                      opts('Delete'))
  vim.keymap.set('n',  '<CR>',          api.node.open.edit,                 opts('Open'))
  vim.keymap.set('n',  ']c',            api.node.navigate.git.next,         opts('Next Git'))
  vim.keymap.set('n',  '[c',            api.node.navigate.git.prev,         opts('Prev Git'))
  vim.keymap.set('n',  ']e',            api.node.navigate.diagnostics.next, opts('Next Diagnostic'))
  vim.keymap.set('n',  '>',             api.node.navigate.sibling.next,     opts('Next Sibling'))
  vim.keymap.set('n',  '<',             api.node.navigate.sibling.prev,     opts('Previous Sibling'))
  vim.keymap.set('n',  'm',             api.fs.create,                      opts('Create'))
  vim.keymap.set('n',  '<2-LeftMouse>', api.node.open.edit,                 opts('Open'))
end

require("nvim-tree").setup{
  on_attach = on_attach,
  git ={
    enable = true
  },
  view = { adaptive_size = true },
  sort_by = "case_sensitive",
  renderer = {
    group_empty = true,
    highlight_git = true,
    -- highlight_opened_files = "all",
    highlight_modified = "all",
    indent_markers = {
      enable = true,
      inline_arrows = true,
      icons = {
        corner = "└",
        edge = "│",
        item = "│",
        bottom = "─",
        none = " ",
      }
    },
    icons = {
      webdev_colors = true,
      git_placement = "before",
      modified_placement = "before",
      padding = " ",
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
        git = true,
        modified = true
      },
      glyphs = {
        default = "",
        symlink = "",
        bookmark = "",
        modified = "●",
        folder = {
          arrow_closed = "▶",
          arrow_open = "▼",
          default = "",
          open = "",
          empty = "",
          empty_open = "",
          symlink = "",
          symlink_open = "",
        }
      }
    },
  },
  filters = {
    dotfiles = true,
  }
}

