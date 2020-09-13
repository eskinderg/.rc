" let g:ycm_filepath_blacklist = {
"       \ 'html': 1,
"       \ 'js': 1,
"       \ 'jsx': 1,
"       \ 'xml': 1,
"       \}
" let g:tern_request_timeout = 1
" let g:tern_request_timeout = 6000
" let g:tern#command = ["tern"]
" let g:tern#arguments = ["--persistent"]
" let g:nvim_typescript#type_info_on_hold = 1

let g:tmuxline_preset = {
      \'a'    : '#S',
      \'win'  : ['#I', '#W'],
      \'cwin' : '#W',
      \'x'    : '%b',
      \'y'    : '%d',
      \'z'    : '%r'}

set updatetime=200

"leafguard/typescript-vim configurations
" let g:typescript_indent_disable = 1
" let g:typescript_compiler_binary = 'tsc'
" let g:typescript_compiler_options = ''
" autocmd FileType typescript :set makeprg=tsc

" let g:ycm_add_preview_to_completeopt=0
" let g:ycm_confirm_extra_conf=0

"jsx settings
" let g:jsx_ext_required = 1

"vim-javascript plugin settings
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1

" let g:javascript_conceal_function             = "ƒ"
" let g:javascript_conceal_null                 = "ø"
" let g:javascript_conceal_this                 = "@"
" let g:javascript_conceal_return               = "⇚"
" let g:javascript_conceal_undefined            = "¿"
" let g:javascript_conceal_NaN                  = "ℕ"
" let g:javascript_conceal_prototype            = "¶"
" let g:javascript_conceal_static               = "•"
" let g:javascript_conceal_super                = "Ω"
" let g:javascript_conceal_arrow_function       = "⇒"
" let g:javascript_conceal_noarg_arrow_function = "🞅"
" let g:javascript_conceal_underscore_arrow_function = "🞅"

" If you prefer the Omni-Completion tip window to close when a selection is
" made, these lines close it on movement in insert mode or when leaving
" insert mode
" autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
" autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" Plug 'machakann/vim-highlightedyank' setting
let g:highlightedyank_highlight_duration = 250

let g:ctrlp_cmdpalette_execute = 1

" Begin Tabgar Settings
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


" vim-indent-guides ========================================================
" let g:indentLine_char = '.'
let g:indentLine_char = '│'
" let g:indentLine_char = '┆'
" let g:indentLine_color_term = 202
let g:indentLine_color_term = 1
let g:indentLine_color_tty_light = 7 " (default: 4)
let g:indentLine_color_dark = 1 " (default: 2)
" End vim-indent-guides ========================================================
