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
let NERDTreeShowHidden=1

" Change default preview key of "go" to "p"
" let g:NERDTreeMapPreview = "p"

let g:NERDTreeIgnore=['\~$', 'vendor', '.git', 'bin', 'obj', 'release', 'node_modules', 'bower_components', 'dist', 'coverage', 'documentation']

" NERDTree configurations
nmap <C-b> :NERDTreeToggle<cr>
nmap <leader>e :NERDTreeToggle<cr>
nmap <C-f> :NERDTreeFind<cr>

" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" autocmd VimEnter * NERDTree " Start NERDTree on startup
