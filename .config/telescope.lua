local actions = require('telescope.actions')

require('telescope').setup {
  defaults = {
    file_ignore_patterns = { "yarn.lock", "docs" ,"node_modules", "bower_components", "dist", ".angular",".vscode", ".git", "build", "bin", "obj", "release","documentation","coverage","node","package-lock.json"},
    mappings = {
      i = {
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
        ["<esc>"] = actions.close
      }
    }
  },
  extensions = {
    fzf = {
      fuzzy = true,
      override_generic_sorter = false,
      override_file_sorter = true,
      case_mode = "smart_case"
    },
  },
  pickers = {
    find_files = {
      previewer = false,
      shorten_path = true,
      layout_strategy = "horizontal",
      -- theme = "dropdown",
    },
    -- buffers = {
    --   show_all_buffers = true,
    --   sort_lastused = true,
    --   -- theme = "dropdown",
    --   -- previewer = false,
    --   mappings = {
    --     i = {
    --       ["<M-d>"] = "delete_buffer",
    --     }
    --   }
    -- }
  }
}
