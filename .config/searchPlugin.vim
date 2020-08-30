" =============================================================================================
nnoremap <Leader>f :call SearchInput() <cr>

function! SearchInput()
  " let curline = getline('.')

  echohl warningmsg " Display message in different color
  call inputsave()
  let str = input('Search string: ')
  call inputrestore()

  call inputsave()
  let type = input('Filetype: ')
  call inputrestore()

  echohl normal
  " call system("git commit -m '" . msg . "'")
  " echom (str. type .' got from terminal')

  if(strlen(str) > 0 && strlen(type))
    silent! execute "vimgrep " . shellescape(str) . " **/*".type
  endif

endfunction
" =============================================================================================



" =============================================================================================
vnoremap <silent><leader>g :<c-u>call GrepOperator(visualmode())<cr>
nnoremap <silent><leader>g :set operatorfunc=GrepOperator<cr>g@


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

" =============================================================================================



" Easily GREP current word in current file.
" command GREP :execute 'vimgrep '.expand('<cword>').' '.expand('%') | :copen | :cc

" NERDTree ignore directory

" These are the tweaks I apply to YCM's config, you don't need them but they might help.
" YCM gives you popups and splits by default that some people might not like, so these should tidy it up a bit for you.
" set completeopt-=preview

