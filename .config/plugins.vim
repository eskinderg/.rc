call plug#begin('~/.config/nvim/plugged')

  Plug 'jiangmiao/auto-pairs' " Autoclose {} [] ()
  Plug 'ctrlpvim/ctrlp.vim' " Vim-devicons compatible ctrlp
  Plug 'fisadev/vim-ctrlp-cmdpalette'
  Plug 'Yggdroot/indentLine'
  Plug 'itchyny/lightline.vim'
  Plug 'scrooloose/nerdtree'
  " Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'AndrewRadev/splitjoin.vim'
  Plug 'tpope/vim-repeat'
  Plug 'drewtempelmeyer/palenight.vim' "Theme Plugin
  Plug 'flazz/vim-colorschemes'
  Plug 'ap/vim-css-color'
  Plug 'tpope/vim-endwise'
  Plug 'Valloric/MatchTagAlways'
  " Plug 'yuttie/comfortable-motion.vim' " physics-based smooth scrolling
  Plug 'Rigellute/shades-of-purple.vim'
  " React Plugins
  " Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}
  " Plug 'mxw/vim-jsx'
  " Plug 'wesQ3/vim-windowswap'
  " Plug 'tiagofumo/vim-nerdtree-syntax-highlight' "Very high performance plugin
  " Plug 'ianks/vim-tsx'
  " Plug 'svermeulen/vim-easyclip'
  " Plug 'w0rp/ale'
  " Plug 'altercation/vim-colors-solarized'
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
  Plug 'HerringtonDarkholme/yats.vim' "Typescript syntax highlight
  " Plug 'leafgarland/typescript-vim', { 'for': 'typescript' } "Typescript syntax highlight
  " Plug 'mhartington/nvim-typescript', {'do': './install.sh'} " Autocompletion of Typescript

  if (has("nvim"))
    Plug 'neovim/nvim-lspconfig'
    Plug 'hrsh7th/nvim-compe'
  endif
  " For C# Autocompletion
  Plug 'OrangeT/vim-csharp'
  Plug 'OmniSharp/omnisharp-vim'
  " CSV Plugin
  " Plug 'chrisbra/csv.vim'
  Plug 'mechatroner/rainbow_csv'

  " Plug 'ervandew/supertab'
  " Plug 'Shougo/denite.nvim'
  " Plug 'Quramy/vim-dtsm'
  " Plug 'Quramy/vim-js-pretty-template'
  " Plug 'vim-syntastic/syntastic' " Syntax error checking
  Plug 'majutsushi/tagbar'
  " Plug 'ternjs/tern_for_vim', { 'do': 'npm install' } " do npm install -g tern
  " Plug 'othree/jspc.vim'
  " Plug 'edkolev/tmuxline.vim'
  Plug 'hail2u/vim-css3-syntax'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'ton/vim-bufsurf'
  Plug 'tpope/vim-commentary'
  Plug 'easymotion/vim-easymotion'
  Plug 'tpope/vim-eunuch'
  Plug 'tpope/vim-fugitive'
  Plug 'airblade/vim-gitgutter'
  " Plug 'fatih/vim-go'
  Plug 'nathanaelkane/vim-indent-guides'
  " Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'javascript.jsx'] }
  " Plug 'jason0x43/vim-js-indent'
  " Plug 'jelera/vim-javascript-syntax'
  Plug 'junegunn/vim-easy-align'
  Plug 'sheerun/vim-polyglot'
  Plug 'tpope/vim-surround'
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'tpope/vim-unimpaired'
  " Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer' }
  " Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
  " Plug 'Valloric/YouCompleteMe', { 'do': './install.py --tern-completer' }
  " Plug 'OmniSharp/omnisharp-vim'
  " Plug 'vim-bookmarks'
  Plug 'kshenoy/vim-signature' " Displays Marker symbol on the side
  " Plug 'gregsexton/matchtag'
  Plug 'sjl/gundo.vim' " Un do History log plugin
  Plug 'ryanoasis/vim-devicons'
  " Plug 'maxbrunsfeld/vim-yankstack'
  Plug 'machakann/vim-highlightedyank'

  " For vim Note taking
  " Plug 'xolox/vim-notes'
  Plug 'xolox/vim-misc'

  " Plug 'VundleVim/Vundle.vim'
  " Plug 'autozimu/LanguageClient-neovim', { 'branch': 'next', 'do': ':UpdateRemotePlugins' }
  " Plug 'junegunn/fzf'
  " Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}
  " Plug 'neoclide/coc.nvim', {'do': 'yarn install'}
  " Plug 'autozimu/LanguageClient-neovim', {'branch': 'next', 'do': 'bash install.sh' }
  " For Denite features
  " Plug 'Shougo/denite.nvim' , { 'do': ':UpdateRemotePlugins' }
  Plug 'vifm/vifm'
  Plug 'junegunn/goyo.vim'
  Plug 'pseewald/vim-anyfold'
  " Plug 'mhinz/vim-signify' " Helps toggle gitdiff and highlights the changes
  Plug 'lambdalisue/suda.vim'
  Plug 'artur-shaik/vim-javacomplete2'

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
