"let mapleader = ","
"let g:mapleader = ","

let mapleader = "\<Space>"

" nvim-typescript goto defenition
nmap <c-]> :TSTypeDef<cr>
" nmap <c-m> :TSImport<cr>
" inoremap <C-k> <C-O>:
" vmap <buffer> ;bo "zdi<B><c-r>z</B><esc>
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
nmap <C-v> :vertical resize +2<cr>
nmap <C-s> :resize +2<cr>
nmap 25 :vertical resize 40<cr>
nmap 50 <c-w>=
nmap 75 :vertical resize 120<cr>

" NERDTree configurations
nmap <C-b> :NERDTreeToggle<cr>
nmap <C-f> :NERDTreeFind<cr>

"Load the current buffer in Chrome
nmap ,c :!open -a Google\ Chrome<cr>

" Create split below
nmap :sp :rightbelow sp<cr>

" Quickly go forward or backward to buffer
nnoremap :bp :BufSurfBack<cr>
nnoremap :bn :BufSurfForward<cr>

" Toggle tag bar
" map <Leader>t :TagbarToggle<cr>
" nmap <Leader>t :TagbarToggle<cr>

" Easy motion stuff
let g:EasyMotion_leader_key = '<Leader>'

" Shorcut for console.log();
map<leader>l "zdiwaconsole.log(<c-r>z);<esc>
map<leader><leader>l "zdiwaconsole.log('<c-r>z');<esc>

vmap<leader>l "zdaconsole.log(<c-r>z);<esc>
vmap<leader><leader>l "zdaconsole.log('<c-r>z');<esc>

" Familiar commands for file/symbol browsing
map <D-p> :CtrlP<cr>
"map <C-r> :CtrlPBufTag<cr>
" Open splits
nmap vs :vsplit<cr>
nmap sp :split<cr>

" Create/edit file in the current directory
nmap :ed :edit %:p:h/

nmap ,1  :call Class()<cr>
" nnoremap <leader>ev :e $MYVIMRC<CR>
nnoremap <leader>ev :e ~/.rc/.vimrc<CR>
" :nnoremap <leader>g :execute "vimgrep " . shellescape(expand("<cWORD>")) . " **/*.ts " " ."<cr>
" Map ctrl + n for no search highlight
" nnoremap <silent><C-n> :set hlsearch! <cr>
nnoremap <C-n> :noh<cr>

" Angular Files open key mappings
nmap <silent><Leader>t :call OpenFile(expand('%:p:h').'/'.GetFileName().'.component.html') <cr>
nmap <silent><Leader>s :call OpenFile(expand('%:p:h').'/'.GetFileName().'.component.scss') <cr>
nmap <silent><Leader>c :call OpenFile(expand('%:p:h').'/'.GetFileName().'.component.ts') <cr>
nmap <silent><Leader>d :call OpenFile(expand('%:p:h').'/'.GetFileName().'.module.ts') <cr>

" Show highlishting groups for the current word
nmap <leader>u :call<SID>SynStack()<CR>

function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc
