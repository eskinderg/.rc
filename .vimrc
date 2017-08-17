set encoding=utf-8
set nocompatible   " Disable vi-compatibility
set t_Co=256
set t_ut=
set background=dark
set showmatch
syntax on

set hidden

"let g:deoplete#enable_at_startup = 1

"set t_8b=^[[48;2;%lu;%lu;%lum
"set t_8f=^[[38;2;%lu;%lu;%lum

"set term=screen-256color
"set term=xterm-256color

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
    "set termguicolors

set termguicolors

if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif

"-----------------------------------------------------------------------------------------------------------------------------------
"

"Trailing whitespaces
"Must Me insetred before the colorscheme
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/

"if !exists('g:airline_symbols')
    "let g:airline_symbols = {}
"endif

""let g:tsuquyomi_completion_detail = 1

"Syntactic error display configuration
"let g:syntastic_debug = 3
"let g:syntastic_typescript_checkers = ['tslint']
"let g:syntastic_typescript_checkers = ['tslint', 'tsc']
"let g:syntastic_typescript_checkers = ['tsuquyomi', 'tslint']

"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

"colorscheme koehler
"colorscheme vim-material
"colorscheme delek
"colorscheme darkblue
"colorscheme blue
"colorscheme industry
"colorscheme morning
"colorscheme pablo
"colorscheme leo
"colorscheme ron
"colorscheme base
"colorscheme automation
"colorscheme onedark
"colorscheme one
colorscheme solarized8_dark_high
"colorscheme one-dark
"colorscheme solarized8_dark
"colorscheme 256-grayvim
"colorscheme shine
"colorscheme slate
"colorscheme solarized

" For commenting filetype plugin on
filetype plugin on

"change swap and backup directory
"set undodir=~/.vim/.undo//
"set backupdir=~/.vim/.backup//
"set directory=~/.vim/.swp//

"Tmux line configs
"Airline theme
"let g:airline_theme='cool'
"let g:airline_theme='onedark'
"let g:airline_theme='base16_grayscale'
"syntax enable
"DoMatchParen
" air-line
"let g:airline_theme='minimalist'
let g:airline_theme='onedark'
let g:airline#extensions#tabline#fnamemod = ':t' "Show only file names in the tab
let g:airline#extensions#tabline#tab_nr_type = 1 "Show Tab Numbers instead of the number of tabs in each windows
let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_powerline_fonts=1
"set guifont=Source\ Code\ Pro\ for\ Powerline
"set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types\ 11

set guifont=Lucida_Console:h11

let g:Powerline_symbols='unicode'
"
"Fuzzy Search(CTRLP) and vimgrep search
set runtimepath^=~/.vim/bundle/ctrlp.vim
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe,node_modules,dist,documentation,coverage,node  "For Windows systems
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe,node_modules/**,dist/**,documentation/**,coverage/**,node/**  "For Linux systems
"set guifont=menlo\ for\ powerline:h30
"set guioptions-=T " Removes top toolbar
set guioptions-=r " Removes right hand scroll bar
set go-=L " Removes left hand scroll bar
set linespace=15
set showmode                    " always show what mode we're currently editing in
set nowrap                      " don't wrap lines
set tabstop=2                  " a tab is two spaces
set smarttab
set tags=tags

set foldmethod=syntax
set foldlevel=3

"set tags=tags;/
set softtabstop=4               " when hitting <BS>, pretend like a tab is removed, even if spaces
set expandtab                   " expand tabs by default (overloadable per file type later)
set shiftwidth=2               " number of spaces to use for autoindenting
set shiftround                  " use multiple of shiftwidth when indenting with '<' and '>'
set backspace=indent,eol,start  " allow backspacing over everything in insert mode
set autoindent                  " always set autoindenting on
set copyindent                  " copy the previous indentation on autoindenting
set number                      " always show line numbers
set relativenumber              " show relative numbering
set ignorecase                  " ignore case when searching
set smartcase                   " ignore case if search pattern is all lowercase,
set timeout timeoutlen=1000 ttimeoutlen=1000
set visualbell           " don't beep
set noerrorbells         " don't beep
set autowrite  "Save on buffer switch
set mouse=a
set clipboard=unnamed "Use System clipboard

filetype on
filetype plugin on
filetype indent on              "With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file

" let mapleader = ","
"let g:mapleader = ","

let mapleader = "\<Space>"

" Easily GREP current word in current file.
command GREP :execute 'vimgrep '.expand('<cword>').' '.expand('%') | :copen | :cc

" Fast saves
" nmap <leader>w :w!<cr>

" Down is really the next line
"nnoremap j gj
"nnoremap k gk

"Better Indentation
vnoremap < <gv
vnoremap > >gv

"Easy escaping to normal model
imap jj <esc>

"Auto change directory to match current file ,cd
nnoremap ,cd :cd %:p:h<CR>:pwd<CR>

"easier window navigation

nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

"nmap <C-k> <C-e>
"nmap <C-j> <C-y>  

"Resize vsplit
nmap <C-v> :vertical resize +5<cr>
nmap 25 :vertical resize 40<cr>
nmap 50 <c-w>=
nmap 75 :vertical resize 120<cr>

nmap <C-b> :NERDTreeToggle<cr>

"NERDTree ignore directory
let g:NERDTreeIgnore=['\~$', 'vendor', 'node_modules', 'dist', 'coverage', 'documentation']

"Load the current buffer in Chrome
nmap ,c :!open -a Google\ Chrome<cr>

"Show (partial) command in the status line
set showcmd

" Create split below
nmap :sp :rightbelow sp<cr>

" Quickly go forward or backward to buffer
nnoremap :bp :BufSurfBack<cr>
nnoremap :bn :BufSurfForward<cr>

highlight Search cterm=underline


" Run PHPUnit tests
map <Leader>t :!phpunit %<cr>

" Easy motion stuff
let g:EasyMotion_leader_key = '<Leader>'

" Powerline (Fancy thingy at bottom stuff)
let g:Powerline_symbols = 'fancy'
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)

autocmd cursorhold * set nohlsearch
autocmd cursormoved * set hlsearch

" Remove search results
command! H let @/=""

"shorcut for console.log();
abbr log console.log();<left><left>

" If you prefer the Omni-Completion tip window to close when a selection is
" made, these lines close it on movement in insert mode or when leaving
" insert mode
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" Abbreviations
abbrev pft PHPUnit_Framework_TestCase

abbrev gm !php artisan generate:model
abbrev gc !php artisan generate:controller
abbrev gmig !php artisan generate:migration

" Auto-remove trailing spaces
autocmd BufWritePre *.php :%s/\s\+$//e

" Edit todo list for project
nmap ,todo :e todo.txt<cr>

" Laravel framework commons
nmap <leader>lr :e app/routes.php<cr>
nmap <leader>lca :e app/config/app.php<cr>81Gf(%O
nmap <leader>lcd :e app/config/database.php<cr>
nmap <leader>lc :e composer.json<cr>

" Concept - load underlying class for Laravel
function! FacadeLookup()
    let facade = input('Facade Name: ')
    let classes = {
\       'Form': 'Html/FormBuilder.php',
\       'Html': 'Html/HtmlBuilder.php',
\       'File': 'Filesystem/Filesystem.php',
\       'Eloquent': 'Database/Eloquent/Model.php'
\   }

    execute ":edit vendor/laravel/framework/src/Illuminate/" . classes[facade]
endfunction
 nmap,lf :call FacadeLookup()<cr>

" CtrlP Stuff

" Familiar commands for file/symbol browsing
map <D-p> :CtrlP<cr>
"map <C-r> :CtrlPBufTag<cr>

" I don't want to pull up these folders/files when calling CtrlP
set wildignore+=*/vendor/**
set wildignore+=*/public/forum/**

" Open splits
nmap vs :vsplit<cr>
nmap sp :split<cr>

" Create/edit file in the current directory
nmap :ed :edit %:p:h/

" Prepare a new PHP class
function! Class()
    let name = input('Class name? ')
    let namespace = input('Any Namespace? ')

    if strlen(namespace)
        exec 'normal i<?php namespace ' . namespace . ';
    else
        exec 'normal i<?php
    endif

    " Open class
    exec 'normal iclass ' . name . ' {^M}^[O^['

    exec 'normal i^M    public function __construct()^M{^M ^M}^['
endfunction
nmap ,1  :call Class()<cr>

" Ad a new dependency to a PHP class
function! AddDependency()
    let dependency = input('Var Name: ')
    let namespace = input('Class Path: ')

    let segments = split(namespace, '\')
    let typehint = segments[-1]

    exec 'normal gg/construct^M:H^Mf)i, ' . typehint . ' $' . dependency . '^[/}^>O$this->^[a' . dependency . ' = $' . dependency . ';^[?{^MkOprotected $' . dependency . ';^M^[?{^MOuse ' . namespace . ';^M^['

    " Remove opening comma if there is only one dependency
    exec 'normal :%s/(, /(/g
'
endfunction
execute pathogen#infect()
