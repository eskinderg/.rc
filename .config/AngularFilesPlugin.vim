function! OpenFile(filename)
  echo (a:filename)
   if filereadable(a:filename)
     silent execute "e " .a:filename
   endif
endfunction

function! GetFileName()
  return split(expand('%:t'),'[/\.]')[0]
endfunction
