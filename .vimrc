set encoding=utf-8
set nocompatible   " Disable vi-compatibility
set t_Co=256
set t_ut=
set background=dark
set showmatch
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)
set incsearch
set cursorline          "highlight current line
set cursorcolumn        "highlight current column
set history=1000
set sessionoptions-=options  " Don't save vim options when mksession
" set wildmenu
" set path+=**

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

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

  Plugin 'Shougo/vimproc.vim'
  Plugin 'jiangmiao/auto-pairs'
  Plugin 'ctrlpvim/ctrlp.vim' " Vim-devicons compatible ctrlp
  Plugin 'Yggdroot/indentLine'
  Plugin 'itchyny/lightline.vim'
  Plugin 'scrooloose/nerdtree'
  Plugin 'Xuyuanp/nerdtree-git-plugin'
  Plugin 'rstacruz/sparkup'
  Plugin 'mhartington/vim-typings'
  Plugin 'Quramy/tsuquyomi'
  Plugin 'Quramy/vim-dtsm'
  Plugin 'Quramy/vim-js-pretty-template'
  Plugin 'vim-syntastic/syntastic'
  Plugin 'majutsushi/tagbar'
  Plugin 'ternjs/tern_for_vim'
  " Plugin 'edkolev/tmuxline.vim'
  Plugin 'leafgarland/typescript-vim'
  Plugin 'vim-airline/vim-airline'
  Plugin 'vim-airline/vim-airline-themes'
  Plugin 'ton/vim-bufsurf'
  Plugin 'tpope/vim-commentary'
  Plugin 'easymotion/vim-easymotion'
  Plugin 'tpope/vim-eunuch'
  Plugin 'tpope/vim-fugitive'
  Plugin 'airblade/vim-gitgutter'
  Plugin 'fatih/vim-go'
  Plugin 'nathanaelkane/vim-indent-guides'
  Plugin 'pangloss/vim-javascript'
  Plugin 'jason0x43/vim-js-indent'
  Plugin 'jelera/vim-javascript-syntax'
  Plugin 'sheerun/vim-polyglot'
  Plugin 'tpope/vim-surround'
  Plugin 'christoomey/vim-tmux-navigator'
  Plugin 'tpope/vim-unimpaired'
  Plugin 'HerringtonDarkholme/yats.vim'
  Plugin 'Valloric/YouCompleteMe'
  " Plugin 'vim-bookmarks'
  Plugin 'kshenoy/vim-signature'
  Plugin 'gregsexton/matchtag'
  Plugin 'sjl/gundo.vim'
  Plugin 'ryanoasis/vim-devicons'
  " Plugin 'maxbrunsfeld/vim-yankstack'
  Plugin 'VundleVim/Vundle.vim'
call vundle#end()

" Fix for syntastic not recognizing *.ts files
autocmd BufNewFile,BufRead *.ts setlocal filetype=typescript


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

" Cusrom Syntastic
let g:syntastic_error_symbol = '✗'
let g:syntastic_style_error_symbol = '⚡'
let g:syntastic_warning_symbol = '⚠⚠'
let g:syntastic_style_warning_symbol = '≈≈'
let g:syntastic_typescript_checkers = ['tsuquyomi', 'tslint']

let g:tsuquyomi_single_quote_import=1 " customize import statements' quotation
let g:tsuquyomi_disable_quickfix = 1 " use syntastic for displaying syntax and semantics errors instead of vim's default quickfix window

" let g:syntastic_scss_checkers = ['scss_lint']

" provides a tooltip function
" autocmd FileType typescript nmap <buffer> <Leader>t : <C-u>echo tsuquyomi#hint()<CR>

"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" inoremap <C-k> <C-O>:

"Custom theme
" source ~/.rc/.themerc.vim

colorscheme EskTheme
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
" colorscheme onedark
"colorscheme one
"colorscheme solarized8_dark_high
"colorscheme vrunchbang-dark
"colorscheme vrunchbang-light
"colorscheme solarized8_dark_low
"colorscheme one-dark
"colorscheme solarized8_dark
"colorscheme 256-grayvim
"colorscheme shine
"colorscheme slate
"colorscheme solarized

"change swap and backup directory
"set undodir=~/.vim/.undo//
set backupdir=~/.vim/.backup//
"set directory=~/.vim/.swp//

" Airline configs  ========================================================================>

" let g:airline_theme='onedark'
" let g:airline_theme='base16_grayscale'
" let g:airline_theme='angr'
" let g:airline_theme='onedark'
let g:airline_theme='minimalist'
" let g:airline_theme='cool'
let g:airline_powerline_fonts=1
let g:airline_section_z = '%t' " Show only filename at the z secion of the airline

" let g:airline_section_y = '%-0.10{getcwd()}'

let g:airline#extensions#syntastic#enabled = 0 " Disable syntastic info
" let g:airline#extensions#tagbar#enabled = 0 " Disable Tagbar info

" let g:airline_section_warning = '%t'
" let g:airline#extensions#tabline#fnamemod = ':t' "Show only file names in the tab
" let g:airline_section_z = '%t'
" g:airline#extensions#tabline#fnamemod
" let g:airline#extensions#tabline#fnamemod = ':t' "Show only file names in the tab
" let g:airline#extensions#tabline#tab_nr_type = 1 "Show Tab Numbers instead of the number of tabs in each windows
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#left_alt_sep = '|'
" let g:Powerline_symbols='unicode'

" End Airline configs  ========================================================================

"Gvim Font setting for GVim
set guifont=Meslo\ LG\ S\ for\ Powerline\ 9

"set viminfo directory
"set viminfo+=n~/.vim/viminfo


"Fuzzy Search(CTRLP) and vimgrep search
set runtimepath^=~/.vim/bundle/ctrlp.vim
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe,node_modules,bower_components,dist,documentation,coverage,node,package-lock.json  "For Windows systems
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe,node_modules/**,bower_components/**,dist/**,documentation/**,coverage/**,node/**,package-lock.json  "For Linux systems
"set guioptions-=T " Removes top toolbar
"set guioptions-=r " Removes right hand scroll bar
set go-=L " Removes left hand scroll bar
"set linespace=15 " For GUI vim or GVim
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
set clipboard=unnamedplus "Use System clipboard
set backup

" vmap <buffer> ;bo "zdi<B><c-r>z</B><esc>

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


" Gundo map =========================================
nnoremap<F5> :GundoToggle<CR>
if has('python3')
    let g:gundo_prefer_python3 = 1
endif
" End Gundo map =========================================



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

" noremap <C-k> <C-e> " Turns out tmux-vim-navigator already have those mappings
" noremap <C-j> <C-y> " Turns out tmux-vim-navigator already have those mappings

"Resize vsplit
nmap <C-v> :vertical resize +5<cr>
nmap 25 :vertical resize 40<cr>
nmap 50 <c-w>=
nmap 75 :vertical resize 120<cr>

" NERDTree configurations
nmap <C-b> :NERDTreeToggle<cr>

" NERDTree ignore directory
let g:NERDTreeIgnore=['\~$', 'vendor', 'node_modules','bower_components', 'dist', 'coverage', 'documentation']

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

" Toggle tag bar
map <Leader>t :TagbarToggle<cr>
nmap <Leader>t :TagbarToggle<cr>

" Easy motion stuff
let g:EasyMotion_leader_key = '<Leader>'

" Powerline (Fancy thingy at bottom stuff)
"let g:Powerline_symbols = 'fancy'
set laststatus=2   " Always show the statusline

autocmd cursorhold * set nohlsearch
autocmd cursormoved * set hlsearch

" Remove search results
command! H let @/=""

" Shorcut for console.log();
map<leader>l "zdiwaconsole.log(<c-r>z);<esc>
map<leader><leader>l "zdiwaconsole.log('<c-r>z');<esc>

vmap<leader>l "zdaconsole.log(<c-r>z);<esc>
vmap<leader><leader>l "zdaconsole.log('<c-r>z');<esc>

" Omni Completeion Settings
" Enable autocompletion
set omnifunc=syntaxcomplete#Complete
" Select keyword as you type
set completeopt=longest,menuone

" If you prefer the Omni-Completion tip window to close when a selection is
" made, these lines close it on movement in insert mode or when leaving
" insert mode
" autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
" autocmd InsertLeave * if pumvisible() == 0|pclose|endif

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

" Vim devicons configurations
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1

let g:DevIconsEnableFolderExtensionPatternMatching = 0


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

" save session =============================================================

" fu! SaveSess()
"   execute 'mksession! ' . getcwd() . '/.session.vim'
" endfunction

" fu! RestoreSess()
"   if filereadable(getcwd() . '/.session.vim')
"     execute 'so ' . getcwd() . '/.session.vim'
"     if bufexists(1)
"       for l in range(1, bufnr('$'))
"         if bufwinnr(l) == -1
"           exec 'sbuffer ' . l
"         endif
"       endfor
"     endif
"   endif
" endfunction

" autocmd VimLeave * call SaveSess()
" autocmd VimEnter * nested call RestoreSess()

" set sessionoptions-=options  " Don't save options
"end save session ===================================================================

nnoremap <leader>ev :e $MYVIMRC<CR>

if !exists("g:ycm_semantic_triggers")
  let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers['typescript'] = ['.']


"End Tabgar Settings =========================================================


" vim-indent-guides ========================================================
" let g:indentLine_char = '.'
" let g:indentLine_char = '│'
let g:indentLine_char = '┆'
" let g:indentLine_color_term = 202
" let g:indentLine_color_term = 1
" let g:indentLine_color_tty_light = 7 " (default: 4)
" let g:indentLine_color_dark = 1 " (default: 2)
" End vim-indent-guides ========================================================


" :nnoremap <leader>g :execute "vimgrep " . shellescape(expand("<cWORD>")) . " **/*.ts " " ."<cr>


vnoremap <leader>g :<c-u>call GrepOperator(visualmode())<cr>
nnoremap <leader>g :set operatorfunc=GrepOperator<cr>g@

nnoremap gt /templateUrl<CR>f'gf
nnoremap gs /styleUrls<CR>f'gf

function! GrepOperator(type)

  let saved_unnamed_register = @@

  if a:type ==# 'v'
    normal! `<v`>y
  elseif a:type ==# 'char'
    normal! `[v`]y
  else
    return
  endif

  silent execute "vimgrep " . shellescape(@@) . " **/*.ts " " ."

  copen

  let @@ = saved_unnamed_register

endfunction


nnoremap <leader>a :set operatorfunc=CustomOperator<cr>g@
vnoremap <leader>a :<c-u>call CustomOperator(visualmode())<cr>

function! CustomOperator(type)
  if a:type ==# 'v'
    execute "normal! `<v`>y"
  elseif a:type ==# 'char'
    execute "normal! `[v`]y"
  else
    return
  endif
  echom @@
endfunction
