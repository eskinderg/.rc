set encoding=utf-8
set nocompatible   " Disable vi-compatibility
set t_Co=256
set t_ut=
set background=dark
set showmatch
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)
set incsearch
syntax on

set hidden

"let g:deoplete#enable_at_startup = 1

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

"Trailing whitespaces
"Must Me insetred before the colorscheme
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/

let g:tmuxline_preset = {
      \'a'    : '#S',
      \'win'  : ['#I', '#W'],
      \'cwin' : '#W',
      \'x'    : '%b',
      \'y'    : '%d',
      \'z'    : '%r'}

set statusline+=%F
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"let g:syntastic_debug = 3
"let g:syntastic_typescript_checkers = ['tslint']
"let g:syntastic_typescript_checkers = ['tslint', 'tsc']
let g:syntastic_typescript_checkers = ['tsuquyomi']
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

inoremap <C-k> <C-O>:

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
"colorscheme solarized8_dark_low
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
"
"
"syntax enable
"DoMatchParen
" air-line
"let g:airline_theme='minimalist'
let g:airline_theme='angr'
"let g:airline_theme='onedark'
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
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe,node_modules,dist,documentation,coverage,node,package-lock.json  "For Windows systems
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe,node_modules/**,dist/**,documentation/**,coverage/**,node/**,package-lock.json  "For Linux systems
"set guifont=menlo\ for\ powerline:h30
"set guioptions-=T " Removes top toolbar
set guioptions-=r " Removes right hand scroll bar
set go-=L " Removes left hand scroll bar
set linespace=15
set showmode                    " always show what mode we're currently editing in
set nowrap                      " don't wrap lines
set tabstop=3                  " a tab is two spaces
set smarttab
set tags=tags

set foldmethod=syntax
set foldlevel=3

"set tags=tags;/
set softtabstop=4               " when hitting <BS>, pretend like a tab is removed, even if spaces
set expandtab                   " expand tabs by default (overloadable per file type later)
set shiftwidth=5               " number of spaces to use for autoindenting
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

"let mapleader = ","
"let g:mapleader = ","

let mapleader = "\<Space>"

" Easily GREP current word in current file.
command GREP :execute 'vimgrep '.expand('<cword>').' '.expand('%') | :copen | :cc

" Fast saves
" nmap <leader>w :w!<cr>

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

"NERDTree configurations
nmap <C-b> :NERDTreeToggle<cr>

"NERDTree ignore directory
let g:NERDTreeIgnore=['\~$', 'vendor', 'node_modules', 'dist', 'coverage', 'documentation']

"Load the current buffer in Chrome
nmap ,c :!open -a Google\ Chrome<cr>

"Show (partial) command in the status line
set showcmd

"These are the tweaks I apply to YCM's config, you don't need them but they might help.
"YCM gives you popups and splits by default that some people might not like, so these should tidy it up a bit for you.
let g:ycm_add_preview_to_completeopt=0
let g:ycm_confirm_extra_conf=0
set completeopt-=preview

"vim-javascript plugin settings
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1

" Create split below
nmap :sp :rightbelow sp<cr>

" Quickly go forward or backward to buffer
nnoremap :bp :BufSurfBack<cr>
nnoremap :bn :BufSurfForward<cr>

highlight Search cterm=underline


" Toggle tag bar
map <Leader>t :TagbarToggle<cr>

" Easy motion stuff
let g:EasyMotion_leader_key = '<Leader>'

" Powerline (Fancy thingy at bottom stuff)
"let g:Powerline_symbols = 'fancy'
set laststatus=2   " Always show the statusline

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

nmap ,1  :call Class()<cr>

"Begin Tabgar Settings
"=============================================================================
let g:tagbar_type_typescript = {
  \ 'ctagsbin' : 'tstags',
  \ 'ctagsargs' : '-f-',
  \ 'kinds': [
    \ 'e:enums:0:1',
    \ 'f:function:0:1',
    \ 't:typealias:0:1',
    \ 'M:Module:0:1',
    \ 'I:import:0:1',
    \ 'i:interface:0:1',
    \ 'C:class:0:1',
    \ 'm:method:0:1',
    \ 'p:property:0:1',
    \ 'v:variable:0:1',
    \ 'c:const:0:1',
  \ ],
  \ 'sort' : 0
\ }
"End Tabgar Settings =========================================================

execute pathogen#infect()

