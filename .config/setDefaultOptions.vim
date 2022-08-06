set encoding=utf-8
set nocompatible                          " Disable vi-compatibility
set t_Co=256
set t_ut=
set background=dark
set showmatch
set incsearch
set cursorline                            " highlight current line
set cursorcolumn                          " highlight current column
set history=10000                         " Incrementa Search. highlight search results as you type
set sessionoptions-=options               " Don't save vim options when mksession
set noswapfile
" set undofile                            " Set a directory to keep track of undo of each file
" set undodir=~/.vim/.undo//              " Set a directory to keep the undo file
" set directory=~/.vim/.swp//             " change swap and backup directory

set backupdir=~/.vim/.backup//
set viminfo='1000,:300000,/300000,<500    " Save Command-line and Search pattern history, number of lines saved for each registers
" set wildmenu
" set path+=**
" set wildmode=list:longest                 " suggestion for normal mode commands

syntax on
filetype on
filetype plugin on
filetype indent on
set hidden
set termguicolors
set go-=L                      " Removes left hand scroll bar
" set linespace=15             " For GUI vim or GVim
" set noshowmode               " Hide the default mode text (e.g. -- INSERT -- below the statusline)
set showmode                   " always show what mode we're currently editing in
set nowrapscan
set nowrap                     " don't wrap lines
" set tabstop=3                  " a tab is two spaces
set smarttab
" set list                     " Show hidden characters
" set listchars=tab:>\ ,eol:¬  " Display hidden characters like new line
set tags=tags
" set foldmethod=syntax
set foldlevel=3
set softtabstop=4              " when hitting <BS>, pretend like a tab is removed, even if spaces
set expandtab                  " expand tabs by default (overloadable per file type later)
set shiftwidth=2               " number of spaces to use for autoindenting
set shiftround                 " use multiple of shiftwidth when indenting with '<' and '>'
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set autoindent                 " always set autoindenting on
set copyindent                 " copy the previous indentation on autoindenting
set number                     " always show line numbers
" set relativenumber           " show relative numbering
set ignorecase               " ignore case when searching
set confirm
set smartcase                  " ignore case if search pattern is all lowercase,
set timeout timeoutlen=350 ttimeoutlen=350
set updatetime=350             " Update time for vim-gitgutter
" set visualbell               " don't beep
" set noerrorbells             " don't beep
set autowrite                  " Save on buffer switch
set mouse=a
set clipboard=unnamedplus      " Use System clipboard
set backup
set wildignore+=*/vendor/**
set wildignore+=*/public/forum/**
set showcmd                    " Show (partial) command in the status line

if has('nvim')
  " set inccommand=nosplit     " Show live preview of substitute command. Works only on neovim compiled with python
  set inccommand=split         " Show live preview of substitute command. Works only on neovim compiled with python
endif

" set conceallevel=1           " Hides qoutes inside json file
set laststatus=2               " Always show the statusline
set runtimepath^=~/.vim/bundle/ctrlp.vim
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe,node_modules,.vscode,docs,.angular,bower_components,dist,build,release,documentation,coverage,node,package-lock.json  "For Windows systems
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe,node_modules/**,.vscode/**,docs/**,.angular/**,bower_components/**,dist/**,build/**,release/**,documentation/**,coverage/**,node/**,package-lock.json  "For Linux systems
set statusline+=%F
set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
" set diffopt=filler,iwhite        " Vim Diff settings ignore whitespace

" set completeopt=menu,menuone,noselect
