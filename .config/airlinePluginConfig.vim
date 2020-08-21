" Airline configs  ========================================================================>

let g:airline_theme='onedark'
" let g:airline_theme='base16_grayscale'
" let g:airline_theme='angr'
" let g:airline_theme='onedark'
" let g:airline_theme='minimalist'
" let g:airline_theme='cool'
" let g:airline_powerline_fonts=1
" let g:airline_section_z = '%t' " Show only filename at the z secion of the airline

" let g:airline_section_y = '%-0.10{getcwd()}'

" let g:airline#extensions#syntastic#enabled = 1 " Disable syntastic info
" let g:airline#extensions#tagbar#enabled = 1 " Disable Tagbar info

" let g:airline_section_warning = '%t'
" let g:airline#extensions#tabline#fnamemod = ':t' "Show only file names in the tab
" let g:airline_section_z = '%t'
" g:airline#extensions#tabline#fnamemod
" let g:airline#extensions#tabline#fnamemod = ':t' "Show only file names in the tab
" let g:airline#extensions#tabline#tab_nr_type = 1 "Show Tab Numbers instead of the number of tabs in each windows
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#left_alt_sep = '|'
" let g:Powerline_symbols='unicode'

" let g:gitgutter_sign_added = ' '
" let g:gitgutter_sign_modified = ' '
" let g:gitgutter_sign_removed = ' '
" let g:gitgutter_sign_removed_first_line = ' '
" let g:gitgutter_sign_modified_removed = ' '

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
