call plug#begin('~/.config/nvim/plugged')

  Plug 'jiangmiao/auto-pairs'          " Autoclose {} [] ()
  Plug 'tpope/vim-commentary'
  Plug 'easymotion/vim-easymotion'
  Plug 'ctrlpvim/ctrlp.vim'            " Vim-devicons compatible ctrlp
  Plug 'fisadev/vim-ctrlp-cmdpalette'
  " Plug 'Yggdroot/indentLine'
  Plug 'lukas-reineke/indent-blankline.nvim' " Indent Lines
  Plug 'preservim/nerdtree'
  Plug 'AndrewRadev/splitjoin.vim'
  Plug 'tpope/vim-repeat'
  Plug 'drewtempelmeyer/palenight.vim' " Theme Plugin

  Plug 'norcalli/nvim-colorizer.lua' " CSS color highlighter

  Plug 'tpope/vim-endwise'
  Plug 'Valloric/MatchTagAlways'
  " Plug 'yuttie/comfortable-motion.vim' " physics-based smooth scrolling
  " Plug 'godlygeek/tabular'
  Plug 'plasticboy/vim-markdown'
  Plug 'editorconfig/editorconfig-vim'
  " Plug 'tpope/vim-dispatch'
  Plug 'lifepillar/vim-solarized8'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'rstacruz/sparkup' " Makes HTML writing easy div > <div></div>
  " Plug 'mhartington/vim-typings'
  " Plug 'Quramy/tsuquyomi'
  " Plug 'Shougo/vimproc.vim' " Required for Defenition navigation for typescript
  "Deoplete Required Plugins
  " Plug 'KeitaNakamura/highlighter.nvim', { 'do': ':UpdateRemotePlugins' } " For C#
  " Plug 'HerringtonDarkholme/yats.vim' "Typescript syntax highlight
  " Plug 'leafgarland/typescript-vim', { 'for': 'typescript' } "Typescript syntax highlight
  " Plug 'mhartington/nvim-typescript', {'do': './install.sh'} " Autocompletion of Typescript

  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " For Syntax Highlighting
  Plug 'nvim-treesitter/playground' " Syntax debugging

  if (has("nvim"))
    Plug 'neovim/nvim-lspconfig'
    Plug 'hrsh7th/cmp-nvim-lsp'
    " Plug 'hrsh7th/cmp-buffer'
    " Plug 'hrsh7th/cmp-path'
    " Plug 'hrsh7th/cmp-cmdline'
    Plug 'hrsh7th/nvim-cmp'
    Plug 'onsails/lspkind-nvim' " For Icons
  endif

  " For C# Autocompletion
  " Plug 'OrangeT/vim-csharp'
  Plug 'OmniSharp/omnisharp-vim'
  " CSV Plugin
  " Plug 'chrisbra/csv.vim'
  Plug 'mechatroner/rainbow_csv'

  " Plug 'ervandew/supertab'
  " Plug 'Shougo/denite.nvim'
  " Plug 'Quramy/vim-dtsm'
  " Plug 'Quramy/vim-js-pretty-template'
  " Plug 'vim-syntastic/syntastic' " Syntax error checking
  Plug 'preservim/tagbar'
  " Plug 'ternjs/tern_for_vim', { 'do': 'npm install' } " do npm install -g tern
  " Plug 'othree/jspc.vim'
  " Plug 'edkolev/tmuxline.vim'
  Plug 'hail2u/vim-css3-syntax'
  " Plug 'vim-airline/vim-airline'
  " Plug 'vim-airline/vim-airline-themes'
  Plug 'nvim-lualine/lualine.nvim'
  " If you want to have icons in your statusline choose one of these
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'ton/vim-bufsurf'
  Plug 'tpope/vim-fugitive'
  Plug 'airblade/vim-gitgutter'
  Plug 'junegunn/vim-easy-align'
  " Plug 'sheerun/vim-polyglot' "Syntax highlighting for a collection of languages
  Plug 'tpope/vim-surround'
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'tpope/vim-unimpaired'
  Plug 'kshenoy/vim-signature' " Displays Marker symbol on the side
  " Plug 'gregsexton/matchtag'
  Plug 'sjl/gundo.vim' " Undo History log plugin
  Plug 'ryanoasis/vim-devicons'
  " Plug 'maxbrunsfeld/vim-yankstack'
  Plug 'machakann/vim-highlightedyank'

  " For vim Note taking
  " Plug 'xolox/vim-notes'
  " Plug 'xolox/vim-misc'

  " Plug 'VundleVim/Vundle.vim'
  " Plug 'autozimu/LanguageClient-neovim', { 'branch': 'next', 'do': ':UpdateRemotePlugins' }
  " Plug 'junegunn/fzf'
  " Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}
  " Plug 'neoclide/coc.nvim', {'do': 'yarn install'}
  " Plug 'autozimu/LanguageClient-neovim', {'branch': 'next', 'do': 'bash install.sh' }
  " For Denite features
  " Plug 'Shougo/denite.nvim' , { 'do': ':UpdateRemotePlugins' }
  Plug 'vifm/vifm'
  " Plug 'junegunn/goyo.vim'
  Plug 'pseewald/vim-anyfold'
  " Plug 'mhinz/vim-signify' " Helps toggle gitdiff and highlights the changes
  Plug 'lambdalisue/suda.vim' " Suda write

  if (has("nvim"))
    Plug 'folke/trouble.nvim'
  endif

  if (has("nvim")) " For Telescope
    " Plug 'nvim-lua/plenary.nvim'
    " Plug 'nvim-telescope/telescope.nvim'
  endif

  "===================================================Neovim 6.0 Plugins=============================
  "Telescope Plugins
  " if has('nvim')
  " Plug 'nvim-lua/plenary.nvim'
  " Plug 'nvim-telescope/telescope.nvim'
  " endif

  " if has('nvim')
  " Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  " endif
  "================================================End Neovim 6.0 Plugins=============================
  call plug#end()

  " Automatically install missing plugins on startup
  autocmd VimEnter *
        \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
        \|   PlugInstall --sync | q
        \| endif
