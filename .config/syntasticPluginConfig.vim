let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:nvim_typescript#diagnosticsEnable  = 0
"let g:syntastic_debug = 3

" Cusrom Syntastic
let g:syntastic_error_symbol = '✗'
" let g:syntastic_error_symbol = '⚡'
let g:syntastic_style_error_symbol = '⚡'
let g:syntastic_warning_symbol = '⚠⚠'
let g:syntastic_style_warning_symbol = '≈≈'
" let g:syntastic_typescript_checkers = ['tslint']
" let g:syntastic_typescript_checkers = ['tsuquyomi', 'tslint']
" let g:syntastic_typescript_checkers = ['tslint', 'tsc']
" let g:syntastic_typescript_checkers = ['tslint', 'tsc', 'nvim-ts']
" let g:syntastic_javascript_checkers = ['eslint']
" let g:syntastic_typescript_checkers = ['nvim-ts']
let g:syntastic_typescript_checkers = ['tslint']
let g:syntastic_javascript_checkers = ['eslint']
" let g:syntastic_aggregate_errors = 1
" let g:syntastic_scss_checkers = ['scss_lint']
" let g:syntastic_always_populate_loc_list = 1
let g:syntastic_enable_signs = 1
" let g:syntastic_debug = 3
" leafgarland config
let g:typescript_compiler_binary = 'tsc'
let g:typescript_compiler_options = ''
