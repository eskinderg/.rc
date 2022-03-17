"let mapleader = ","
"let g:mapleader = ","

let mapleader = "\<Space>"

" nvim-typescript goto defenition
" autocmd FileType typescript nnoremap <buffer> <c-]> :TSTypeDef<cr>
autocmd FileType html nnoremap <silent><buffer> <c-]> :lua vim.lsp.buf.definition()<cr>
autocmd FileType typescript nnoremap <silent><buffer> <c-]> :lua vim.lsp.buf.definition()<cr>
autocmd FileType javascript nnoremap <silent><buffer> <c-]> :lua vim.lsp.buf.definition()<cr>

nnoremap <silent><leader><leader>= <cmd>lua vim.lsp.buf.formatting()<CR>

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
nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>

"easier window navigation

nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" map <C-h> :call WinMove('h')<cr>
" map <C-j> :call WinMove('j')<cr>
" map <C-k> :call WinMove('k')<cr>
" map <C-l> :call WinMove('l')<cr>

" Window movement shortcuts
" move to the window in the direction shown, or create a new window
" function! WinMove(key)
"     let t:curwin = winnr()
"     exec "wincmd ".a:key
"     if (t:curwin == winnr())
"         if (match(a:key,'[jk]'))
"             wincmd v
"         else
"             wincmd s
"         endif
"         exec "wincmd ".a:key
"     endif
" endfunction

" Mapping for switching buffers
nmap <C-o> :bp<cr>
nmap <C-i> :bn<cr>

" noremap <C-k> <C-e> " Turns out tmux-vim-navigator already have those mappings
" noremap <C-j> <C-y> " Turns out tmux-vim-navigator already have those mappings

"Resize vsplit
nmap <C-v> :vertical resize +2<cr>
nmap <C-s> :resize +2<cr>
nmap 25 :vertical resize 40<cr>
nmap 50 <c-w>=
nmap 75 :vertical resize 120<cr>

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

map <silent><leader>gdiff :Gdiffsplit<cr>
vmap<leader>l "zdaconsole.log(<c-r>z);<esc>
vmap<leader><leader>l "zdaconsole.log('<c-r>z');<esc>

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

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
nnoremap <leader>ep :e ~/.rc/.config/plugins.vim<CR>
map <leader><leader>s :source $MYVIMRC<cr>

" :nnoremap <leader>g :execute "vimgrep " . shellescape(expand("<cWORD>")) . " **/*.ts " " ."<cr>
" Map ctrl + n for no search highlight
" nnoremap <silent><C-n> :set hlsearch! <cr>
nnoremap <silent><C-n> :noh<cr>

" Angular Files key mappings
autocmd BufNewFile,BufReadPost *.ts nmap <silent><Leader>t :call OpenFile(expand('%:p:h').'/'.GetFileName().'.component.html') <cr>
autocmd BufNewFile,BufReadPost *.ts nmap <silent><Leader>s :call OpenFile(expand('%:p:h').'/'.GetFileName().'.component.scss') <cr>
autocmd BufNewFile,BufReadPost *.ts nmap <silent><Leader>c :call OpenFile(expand('%:p:h').'/'.GetFileName().'.component.ts') <cr>
autocmd BufNewFile,BufReadPost *.ts nmap <silent><Leader>d :call OpenFile(expand('%:p:h').'/'.GetFileName().'.module.ts') <cr>

" Show highlishting groups for the current word
nmap <leader>u :call<SID>SynStack()<CR>

function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

nmap <silent>gl :0Glog<CR>

" nmap <cr> gx

" nmap <silent> <space>e :CocCommand explorer<CR>
