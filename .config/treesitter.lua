require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = {
    "angular",
    "typescript",
    "javascript",
    "c_sharp",
    "scss",
    "css",
    "sql",
    "php",
    "java",
    "html",
    "yaml",
    "markdown",
    "bash",
    "c",
    "lua",
    "rust",
    "python",
    "regex",
  },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = true,

  -- Automatically install missing parsers when entering buffer
  auto_install = true,

  -- List of parsers to ignore installing (for "all")

  -- ignore_install = { "javascript" },

  indent = {
    enable = true,
  },

  highlight = {
    -- `false` will disable the whole extension
    enable = true,

    -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
    -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
    -- the name of the parser)

    -- list of language that will be disabled
    -- disable = { "c", "rust" },
    -- disable = { "html", "typescript" },

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = true
  },
  matchup = {
    enable = true,              -- mandatory, false will disable the whole extension
    disable = { "c", "ruby" },  -- optional, list of language that will be disabled
    -- [options]
  },
}
