" let g:LanguageClient_loggingLevel = 'DEBUG'
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

let g:gitgutter_diff_args = '-w'

"leafguard/typescript-vim configurations
" let g:typescript_indent_disable = 1
" let g:typescript_compiler_binary = 'tsc'
" let g:typescript_compiler_options = ''
" autocmd FileType typescript :set makeprg=tsc

let g:NERDTreeIgnore=['\~$', 'vendor', 'bin', 'obj', 'release', 'node_modules', 'bower_components', 'dist', 'coverage', 'documentation']

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

" If you prefer the Omni-Completion tip window to close when a selection is
" made, these lines close it on movement in insert mode or when leaving
" insert mode
" autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
" autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" Vim devicons configurations
let g:WebDevIconsUnicodeDecorateFolderNodes = 1 "Turn on Folder Icons
" let g:NERDTreeDirArrowExpandable = '🗀 '
" let g:NERDTreeDirArrowCollapsible = '🗁 '
" let g:DevIconsEnableFolderExtensionPatternMatching = 0
autocmd FileType nerdtree setlocal nolist
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1
let g:WebDevIconsNerdTreeAfterGlyphPadding = '  '
" let g:WebDevIconsNerdTreeGitPluginForceVAlign = 'on'

" close NERDTree after a file is opened
let g:NERDTreeQuitOnOpen=0
" show hidden files in NERDTree
" let NERDTreeShowHidden=1

" Change default preview key of "go" to "p"
" let g:NERDTreeMapPreview = "p"

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
