vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

require("nvim-tree").setup({
  git ={
    enable = true
  },
  sort_by = "case_sensitive",
  view = {
    width = table,
    side = 'left',
    mappings = {
      list = {
        { key = "go", action = "preview" },
        { key = "O", action = "expand_all" },
        { key = "u", action = "dir_up" },
        { key = "s", action = "split" },
        { key = "v", action = "vsplit" },
        { key = "c", action = "rename" },
        { key = "C", action = "cd" },
        { key = "r", action = "refresh" },
        { key = "R", action = "rename" },
        { key = "p", action = "parent_node" },
        { key = "x", action = "close_node" },
        { key = "X", action = "collapse_all" },
      },
    },
  },
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
      },
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
        modified = true,
      },
    },   
  },
  filters = {
    dotfiles = true,
  },
})
