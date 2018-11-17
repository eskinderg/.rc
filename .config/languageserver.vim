" breakadd here

" let g:LanguageClient_serverCommands = {
"     \ 'javascript': ['javascript-typescript-langserver'],
"     \ 'javascript.jsx': ['javascript-typescript-langserver'],
"     \ 'css': ['vscode-css-languageserver-bin'],
"     \ }

" ********
"
" Deoplete
"
" ********

" let g:deoplete#enable_at_startup  = 1
" let g:deoplete#enable_ignore_case = 1
" let g:deoplete#enable_smart_case  = 1
" filetype plugin on
" set omnifunc=syntaxcomplete#Complete
" set completeopt=longest,menuone,preview

" omnifuncs
" augroup omnifuncs
    " autocmd!
    " autocmd FileType css,scss,sass,less setlocal omnifunc=csscomplete#CompleteCSS
    " autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
    " autocmd FileType jsx,js setlocal omnifunc=javascriptcomplete#CompleteJS " removed javascript before jsx
    " autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
" augroup end


" let g:LanguageClient_serverCommands = {
"     \ 'typescript': ['javascript-typescript-stdio'],
"     \ 'javascript': ['javascript-typescript-stdio'],
"     \ }


" let g:LanguageClient_serverCommands = {
"       \ 'rust': ['rustup', 'run', 'nightly', 'rls'],
"       \ 'javascript': ['javascript-typescript-stdio'],
"       \ 'javascript.jsx': ['javascript-typescript-stdio'],
"       \ 'typescript': ['javascript-typescript-stdio'],
"       \ 'cpp': ['clangd'],
"       \ 'objc': ['clangd'],
"       \ 'c': ['clangd'],
"       \ 'objcpp': ['clangd']
"       \ }


" " Automatically start language servers.
" let g:LanguageClient_autoStart = 1

" autocmd BufReadPost *.js setlocal filetype=javascript

" nnoremap <silent> K :call LanguageClient_textDocument_hover()<CR>
" nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>
" nnoremap <silent> <F2> :call LanguageClient_textDocument_rename()<CR>

" set omnifunc=LanguageClient#complete
" set completefunc=LanguageClient#complete

let g:LanguageClient_autoStart = 1

" Minimal LSP configuration for JavaScript
let g:LanguageClient_serverCommands = {}
if executable('javascript-typescript-stdio')
  let g:LanguageClient_serverCommands.javascript = ['javascript-typescript-stdio']
  " Use LanguageServer for omnifunc completion
  autocmd FileType javascript setlocal omnifunc=LanguageClient#complete
else
  echo "javascript-typescript-stdio not installed!\n"
  :cq
endif
