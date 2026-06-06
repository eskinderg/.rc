" OmniSharp won't work without this setting
filetype plugin on

" Set the type lookup function to use the preview window instead of echoing it
"let g:OmniSharp_typeLookupInPreview = 1

" Timeout in seconds to wait for a response from the server
let g:OmniSharp_timeout = 5

let g:OmniSharp_server_stdio = 1

" Don't autoselect first omnicomplete option, show options even if there is only
" one (so the preview documentation is accessible). Remove 'preview' if you
" don't want to see any documentation whatsoever.
set completeopt=longest,menuone

" Fetch full documentation during omnicomplete requests.
" There is a performance penalty with this (especially on Mono).
" By default, only Type/Method signatures are fetched. Full documentation can
" still be fetched when you need it with the :OmniSharpDocumentation command.
"let g:omnicomplete_fetch_full_documentation = 1

" Set desired preview window height for viewing documentation.
" You might also want to look at the echodoc plugin.
set previewheight=5

" To use stdio version of omnishar
" let g:OmniSharp_server_stdio = 1
" Make sure to run :OmniSharpInstall

" Tell ALE to use OmniSharp for linting C# files, and no other linters.
" let g:ale_linters = { 'cs': ['OmniSharp'] }

" Fetch semantic type/interface/identifier names on BufEnter and highlight them
let g:OmniSharp_highlight_types = 2

" let g:OmniSharp_selector_ui = 'ctrlp'  " Use ctrlp.vim

let g:syntastic_cs_checkers = ['code_checker']

let g:OmniSharp_server_use_net6 = 1

" autocmd FileType *.cs call OmniSharp#HighlightTypes()

augroup omnisharp_commands
  autocmd!

  " When Syntastic is available but not ALE, automatic syntax check on events
  " (TextChanged requires Vim 7.4)
  " autocmd BufEnter,TextChanged,InsertLeave *.cs SyntasticCheck

  " Show type information automatically when the cursor stops moving
  " autocmd CursorHold *.cs call OmniSharp#TypeLookupWithoutDocumentation()

  " Update the highlighting whenever leaving insert mode
  " autocmd InsertLeave *.cs call OmniSharp#HighlightBuffer()

  " Alternatively, use a mapping to refresh highlighting for the current buffer
  autocmd FileType cs nnoremap <buffer> <Leader>th :OmniSharpHighlightTypes<CR>

  " The following commands are contextual, based on the cursor position.
  " autocmd FileType cs nnoremap <buffer> gd :OmniSharpGotoDefinition<CR>
  autocmd FileType cs nnoremap <buffer> <C-]> :OmniSharpGotoDefinition<CR>
  autocmd FileType cs nnoremap <buffer> <C-[> :OmniSharpFindImplementations<CR>
  autocmd FileType cs nnoremap <buffer> <Leader>i :OmniSharpFindImplementations<CR>
  autocmd FileType cs nnoremap <buffer> <Leader>fs :OmniSharpFindSymbol<CR>
  autocmd FileType cs nnoremap <buffer> <Leader>r :OmniSharpFindUsages<CR>

  " Finds members in the current buffer
  autocmd FileType cs nnoremap <buffer> <Leader>fm :OmniSharpFindMembers<CR>

  autocmd FileType cs nnoremap <buffer> <Leader>fx :OmniSharpFixUsings<CR>
  autocmd FileType cs nnoremap <buffer> <Leader>tt :OmniSharpTypeLookup<CR>
  " autocmd FileType cs nnoremap <buffer> <Leader>dc :OmniSharpDocumentation<CR>
  autocmd FileType cs nnoremap <silent> <buffer> <Leader>d :lua vim.diagnostic.open_float()<CR>
  autocmd FileType cs nnoremap <buffer> <C-\> :OmniSharpSignatureHelp<CR>
  autocmd FileType cs inoremap <buffer> <C-\> <C-o>:OmniSharpSignatureHelp<CR>
  " autocmd FileType cs nnoremap <buffer> <Leader>= :OmniSharpCodeFormat<CR>
  autocmd FileType cs nnoremap <buffer> <Leader>== :lua vim.lsp.buf.format { async = true }<CR>
  autocmd FileType cs nnoremap <buffer> <Leader>= :lua vim.lsp.buf.range_formatting()<CR>
  " Rename with dialog
  autocmd FileType cs nnoremap <Leader>rn :OmniSharpRename<CR>
  autocmd FileType cs nnoremap <F2> :OmniSharpRename<CR> " Rename without dialog - with cursor on the symbol to rename: `:Rename newname`
  autocmd FileType cs nnoremap <Leader><cr> :lua vim.lsp.buf.code_action()<CR>

  command! -nargs=1 Rename :call OmniSharp#RenameTo("<args>")
  " Navigate up and down by method/property/field
  " autocmd FileType cs nnoremap <buffer> <C-k> :OmniSharpNavigateUp<CR>
  " autocmd FileType cs nnoremap <buffer> <C-j> :OmniSharpNavigateDown<CR>
augroup END

" Contextual code actions (uses fzf, CtrlP or unite.vim when available)
" nnoremap <Leader><Space> :OmniSharpGetCodeActions<CR>
" Run code actions with text selected in visual mode to extract method
" xnoremap <Leader><Space> :call OmniSharp#GetCodeActions('visual')<CR>

" Start the omnisharp server for the current solution
nnoremap <Leader>ss :OmniSharpStartServer<CR>
nnoremap <Leader>sp :OmniSharpStopServer<CR>

" Powerline (Fancy thingy at bottom stuff)
"let g:Powerline_symbols = 'fancy'
" Omni Completeion Settings
" let g:OmniSharp_server_type = 'roslyn'
" let g:OmniSharp_prefer_global_sln = 1
" let g:OmniSharp_timeout = 10
" let g:OmniSharp_server_path ='/home/esk/omnisharp-server/OmniSharp/bin/Debug/OmniSharp.exe'
" let g:OmniSharp_server_path = '/home/esk/omnisharp-server/OmniSharp/bin/Debug/OmniSharp.exe'
" let g:OmniSharp_server_path = '/home/esk/.vim/bundle/omnisharp-linux-x64/run'
" let g:OmniSharp_server_path = '/home/esk/.vscode/extensions/ms-vscode.csharp-1.15.2/.omnisharp/1.30.1/omnisharp/OmniSharp.exe'
" let g:OmniSharp_server_use_mono = 1
" let g:omnisharp_proc_debug = 1
" let g:OmniSharp_start_server = 0
" let g:Omnisharp_start_server = 1
" let g:Omnisharp_stop_server = 2  " Automatically stop the server

" Enable autocompletion
" set omnifunc=syntaxcomplete#Complete
" Select keyword as you type
" set completeopt=longest,menuone

" Enable snippet completion
" let g:OmniSharp_want_snippet=1
