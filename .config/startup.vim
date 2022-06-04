" Auto start if no file opened
" autocmd StdinReadPre * let s:std_in=1

" autocmd cursorhold * set nohlsearch
" autocmd cursormoved * set hlsearch

" Fix for syntastic not recognizing *.ts files
" autocmd BufNewFile,BufRead *.js setlocal filetype=typescript
" autocmd BufNewFile,BufRead *.ts setlocal filetype=typescript
autocmd BufNewFile,BufReadPost *.ts set filetype=typescript
" autocmd BufNewFile,BufRead *.jsx setlocal filetype=typescript
" autocmd BufNewFile,BufRead *.tsx setlocal filetype=typescript

" autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS

" autocmd FileType html setlocal shiftwidth=4 tabstop=4

" autocmd FileType cs OmniSharp_highlight_types

" provides a tooltip function
" autocmd FileType typescript nmap <buffer> <Leader>t : <C-u>echo tsuquyomi#hint()<CR>
"
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow
