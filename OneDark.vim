" Name:         OneDarkTheme colorscheme for Vim & NVIM
" Maintainer:   Eskinder <eskinderget@gmail.com>

set background=dark

hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "OneDark"

" if !has('gui_running') && get(g:, 'solarized_termtrans', 0)
hi! Normal cterm=NONE gui=NONE ctermfg=14 guifg=#c5c7c4 ctermbg=8 guibg=#282c34

" Set Spell check for txt files
autocmd BufRead,BufNewFile *.txt setlocal spell
" colorscheme for text files
autocmd BufRead,BufNewFile *.txt hi! Normal cterm=NONE gui=NONE ctermfg=14 guifg=#989a97 ctermbg=8 guibg=#282c34

"Function frech brackets
hi! Function ctermbg=0 guibg=#282c34 guifg=#61afef
hi! Conditional ctermbg=0 guibg=#282c34 guifg=#767676
hi! String ctermbg=0 guibg=#282c34 cterm=italic guifg=#4a8e5e
" hi! Repeat ctermbg=0 guibg=#282c34  guifg=black
" hi! Operator ctermbg=0 guibg=#282c34 guifg=#268bd2
hi! Debug ctermbg=0 guibg=#282c34 guifg=blue

hi! LineNr ctermbg=0 guibg=#282c34
hi! Folded ctermbg=0 guibg=#282c34
hi! FoldColumn ctermbg=0 guibg=#282c34
" else
" hi! Normal cterm=NONE gui=NONE ctermfg=14 guifg=#ccd2cf ctermbg=8 guibg=#282c34
" hi! CursorLineNr ctermbg=0 guibg=#282c34
" hi! LineNr ctermbg=0 guibg=#282c34
" hi! Folded ctermbg=0 guibg=#282c34
" hi! FoldColumn ctermbg=0 guibg=#282c34
" endif

" Colors for the cursor
highlight Cursor guifg=#FFFFFF guibg=#528bff gui=NONE
highlight iCursor guifg=white guibg=red
set guicursor=n-v-c:block-Cursor
set guicursor+=i:ver100-Cursor
set guicursor+=n-v-c:blinkon0
" set guicursor+=i:blinkwait100-blinkon100-blinkoff250-iCursor
" set guicursor=i-ci:hor10-iCursor

" For the gutter color
highlight SignColumn guibg=#282c34

"highlights for git gutter
highlight GitGutterAdd guifg=#007c00
highlight GitGutterChange guifg=#b58900
highlight GitGutterDelete guifg=#dc322f
highlight GitGutterChangeDelete guifg=#268bd2

" for Plug 'machakann/vim-highlightedyank' setting
highlight HighlightedyankRegion guibg=#3e4451

" typescriptOperator delete new instanceof typeof
hi! typescriptOperator cterm=NONE gui=NONE,bold cterm=italic ctermfg=11 guifg=#61afef ctermbg=NONE guibg=NONE
" typescriptSource import export from as
hi! typescriptSource cterm=NONE gui=NONE, cterm=italic ctermfg=11 guifg=#61afef ctermbg=NONE guibg=NONE
" typescriptBoolean true false
hi! typescriptBoolean cterm=NONE gui=NONE, cterm=italic ctermfg=11 guifg=#61afef ctermbg=NONE guibg=NONE
hi! typescriptType cterm=NONE gui=NONE, cterm=italic ctermfg=11 guifg=#61afef ctermbg=NONE guibg=NONE
hi! typescriptVariableDeclaration cterm=NONE gui=NONE,bold ctermfg=4 guifg=#4a76ce ctermbg=NONE guibg=NONE
"return
hi! typescriptStatement cterm=NONE gui=NONE, cterm=italic ctermfg=11 guifg=#61afef ctermbg=NONE guibg=NONE
hi! typescriptDecorators cterm=NONE gui=NONE,bold, cterm=italic ctermfg=11 guifg=#61afef ctermbg=NONE guibg=NONE
hi! typescriptDecorator cterm=NONE gui=NONE,bold, cterm=italic ctermfg=11 guifg=#61afef ctermbg=NONE guibg=NONE
" syntax keyword typescriptHtmlElemProperties contained className clientHeight clientLeft clientTop clientWidth dir href id innerHTML lang length offsetHeight offsetLeft offsetParent offsetTop offsetWidth scrollHeight scrollLeft scrollTop scrollWidth style tabIndex target title
hi! typescriptTypeReference cterm=NONE gui=NONE,bold cterm=italic ctermfg=11 guifg=#4a76ce ctermbg=NONE guibg=NONE
hi! typescriptHtmlElemProperties cterm=NONE gui=NONE, cterm=italic ctermfg=11 guifg=orange ctermbg=NONE guibg=NONE
hi! typescriptParameters cterm=NONE gui=NONE, cterm=italic ctermfg=11 guifg=orange ctermbg=NONE guibg=NONE
hi! typescriptHtmlElemAttrs cterm=NONE gui=NONE, cterm=italic ctermfg=11 guifg=orange ctermbg=NONE guibg=NONE
hi! typescriptAll cterm=NONE gui=NONE, cterm=italic ctermfg=11 guifg=orange ctermbg=NONE guibg=NONE
hi! typescriptBrowserObjects cterm=NONE gui=NONE, cterm=italic ctermfg=11 guifg=orange ctermbg=NONE guibg=NONE
hi! foldBraces cterm=NONE gui=NONE, cterm=italic ctermfg=11 guifg=orange ctermbg=NONE guibg=NONE
hi! typescriptFunction cterm=NONE gui=NONE, cterm=italic ctermfg=11 guifg=red ctermbg=NONE guibg=NONE
hi! typescriptRefD cterm=NONE gui=NONE, cterm=italic ctermfg=11 guifg=green ctermbg=NONE guibg=NONE
" hi! typescriptRefS cterm=NONE gui=NONE, cterm=italic ctermfg=11 guifg=blue ctermbg=NONE guibg=NONE
" hi! typescriptPrototype cterm=NONE gui=NONE, cterm=italic ctermfg=11 guifg=blue ctermbg=NONE guibg=NONE

hi! qfFileName cterm=NONE gui=NONE, cterm=italic ctermfg=11 guifg=#4a76ce ctermbg=NONE guibg=NONE
hi! qfLineNr cterm=NONE gui=NONE, cterm=italic ctermfg=11 guifg=#61afef ctermbg=NONE guibg=NONE

hi! Comment cterm=NONE gui=NONE, gui=italic cterm=italic ctermfg=11 guifg=#4b5364 ctermbg=NONE guibg=NONE
hi! Constant cterm=NONE gui=NONE ctermfg=6 guifg=#2aa198 ctermbg=NONE guibg=NONE

"this keyword
hi! Identifier cterm=NONE gui=NONE ctermfg=4 guifg=#4a76ce ctermbg=NONE guibg=NONE
hi! Statement cterm=NONE gui=NONE ctermfg=2 guifg=#c678dd ctermbg=NONE guibg=NONE
hi! PreProc cterm=NONE gui=NONE ctermfg=9 guifg=#61afef ctermbg=NONE guibg=NONE
hi! Type cterm=NONE gui=NONE ctermfg=3 guifg=#b58900 ctermbg=NONE guibg=NONE
hi! Special cterm=NONE gui=NONE ctermfg=9 guifg=#767676 ctermbg=NONE guibg=NONE
hi! Underlined cterm=NONE gui=NONE ctermfg=13 guifg=#6c71c4 ctermbg=NONE guibg=NONE
hi! Ignore cterm=NONE gui=NONE ctermfg=NONE guifg=NONE ctermbg=NONE guibg=NONE
hi! Error cterm=NONE,bold gui=NONE,bold ctermfg=1 guifg=#dc322f ctermbg=NONE guibg=NONE
hi! Todo cterm=NONE,bold gui=NONE,bold cterm=italic ctermfg=5 guifg=#d33682 ctermbg=NONE guibg=NONE
hi! link QuickFixLine Search
hi! MatchParen cterm=NONE,bold gui=NONE,bold ctermfg=15 guifg=#fdf6e3 ctermbg=0 guibg=#282c34
hi! typescriptDocNamedParamType cterm=NONE gui=NONE,bold  cterm=italic ctermfg=11 guifg=#4b5364 ctermbg=NONE guibg=NONE
hi! typescriptExport cterm=NONE gui=NONE ctermfg=4 guifg=#c678dd ctermbg=NONE guibg=NONE
hi! typescriptImport cterm=NONE gui=NONE ctermfg=4 guifg=#c678dd ctermbg=NONE guibg=NONE
hi! typescriptAssign cterm=NONE gui=NONE ctermfg=4 guifg=#c678dd ctermbg=NONE guibg=NONE
hi! typescriptBinaryOp cterm=NONE gui=NONE ctermfg=4 guifg=#c678dd ctermbg=NONE guibg=NONE
hi! typescriptCastKeyword cterm=NONE gui=NONE ctermfg=4 guifg=#c678dd ctermbg=NONE guibg=NONE
hi! typescriptClassKeyword cterm=NONE gui=NONE ctermfg=4 guifg=#c678dd ctermbg=NONE guibg=NONE
hi! typescriptDecorator cterm=NONE gui=NONE,bold ctermfg=4 guifg=#61afef ctermbg=NONE guibg=NONE
hi! typescriptClassHeritage cterm=NONE gui=NONE,bold ctermfg=4 guifg=#4a76ce ctermbg=NONE guibg=NONE
hi! typescriptClassName cterm=NONE gui=NONE,bold ctermfg=4 guifg=#4a76ce ctermbg=NONE guibg=NONE
hi! typescriptBlock cterm=NONE gui=NONE ctermfg=4 guifg=#4a76ce ctermbg=NONE guibg=NONE
" hi! typescriptBlock cterm=NONE gui=NONE ctermfg=4 guifg=red ctermbg=NONE guibg=NONE
hi! typescriptIdentifierName cterm=NONE gui=NONE,bold ctermfg=4 guifg=#b58900 ctermbg=NONE guibg=NONE
" hi! typescriptIdentifier cterm=NONE gui=NONE ctermfg=4 guifg=blue ctermbg=NONE guibg=NONE
hi! typescriptArray cterm=NONE gui=NONE ctermfg=4 guifg=#61afef ctermbg=NONE guibg=NONE
hi! typescriptMember cterm=NONE gui=NONE ctermfg=4 guifg=#4a76ce ctermbg=NONE guibg=NONE
hi! typescriptCall cterm=NONE gui=NONE,italic ctermfg=4 guifg=#4a76ce ctermbg=NONE guibg=NONE
" hi! typescriptArrowFuncArg cterm=NONE gui=NONE ctermfg=4 guifg=red ctermbg=NONE guibg=NONE
hi typescriptArrowFunc cterm=NONE gui=NONE,bold cterm=italic ctermfg=11 guifg=#c678dd ctermbg=NONE guibg=NONE
hi! typescriptParens cterm=NONE gui=NONE ctermfg=13 guifg=#6c71c4 ctermbg=NONE guibg=NONE
hi! typescriptClassBlock cterm=NONE gui=NONE ctermfg=4 guifg=#0e90f3 ctermbg=NONE guibg=NONE
" hi! typescriptProperty cterm=NONE gui=NONE ctermfg=4 guifg=green ctermbg=NONE guibg=NONE
" hi! typescriptProp cterm=NONE gui=NONE,italic ctermfg=4 guifg=green ctermbg=NONE guibg=NONE
hi! typescriptPredefinedType cterm=NONE gui=NONE,italic ctermfg=4 guifg=#4a76ce ctermbg=NONE guibg=NONE
hi! typescriptFuncCallArg cterm=NONE gui=NONE,italic ctermfg=4 guifg=#4a76ce ctermbg=NONE guibg=NONE

hi! typescriptConditionalParen cterm=NONE gui=NONE,italic ctermfg=4 guifg=#61afef ctermbg=NONE guibg=NONE

hi! SpecialKey cterm=NONE,bold gui=NONE,bold ctermfg=12 guifg=#839496 ctermbg=0 guibg=#282c34
hi! NonText cterm=NONE,bold gui=NONE,bold ctermfg=12 guifg=#839496 ctermbg=NONE guibg=NONE
hi! CursorLineNr cterm=NONE, gui=NONE, ctermfg=14 guifg=#93a1a1
hi! Title cterm=NONE,bold gui=NONE,bold ctermfg=3 guifg=#b58900 ctermbg=NONE guibg=NONE
" endif
hi! NormalMode ctermfg=14 guifg=#93a1a1 ctermbg=15 guibg=#fdf6e3 cterm=NONE,reverse gui=NONE,reverse
hi! InsertMode ctermfg=6 guifg=#2aa198 ctermbg=15 guibg=#fdf6e3 cterm=NONE,reverse gui=NONE,reverse
hi! ReplaceMode ctermfg=9 guifg=#61afef ctermbg=15 guibg=#fdf6e3 cterm=NONE,reverse gui=NONE,reverse
hi! VisualMode ctermfg=5 guifg=#d33682 ctermbg=15 guibg=#fdf6e3 cterm=NONE,reverse gui=NONE,reverse
hi! CommandMode ctermfg=5 guifg=#d33682 ctermbg=15 guibg=#fdf6e3 cterm=NONE,reverse gui=NONE,reverse

hi! StatusLine ctermfg=14 guifg=#93a1a1 ctermbg=0 guibg=#282c34 cterm=NONE,reverse gui=NONE,reverse
hi! StatusLineNC ctermfg=11 guifg=#202530 ctermbg=0 guibg=#282c34 cterm=NONE,reverse gui=NONE,reverse
hi! TabLine ctermfg=11 guifg=#4b5364 ctermbg=0 guibg=#282c34 cterm=NONE,reverse gui=NONE,reverse
hi! TabLineFill ctermfg=11 guifg=#4b5364 ctermbg=0 guibg=#282c34 cterm=NONE,reverse gui=NONE,reverse
hi! TabLineSel ctermfg=14 guifg=#93a1a1 ctermbg=0 guibg=#282c34 cterm=NONE,reverse gui=NONE,reverse
" endif
" hi! Visual ctermfg=11 guifg=#4b5364 ctermbg=8 guibg=#282c34 cterm=NONE,reverse gui=NONE,reverse
hi! Visual guibg=#3e4451
hi! Directory cterm=NONE gui=NONE ctermfg=4 guifg=#268bd2 ctermbg=NONE guibg=NONE
hi! ErrorMsg cterm=NONE,reverse gui=NONE,reverse ctermfg=1 guifg=#dc322f ctermbg=15 guibg=#fdf6e3
hi! IncSearch cterm=NONE,standout gui=NONE,standout ctermfg=9 guifg=#61afef ctermbg=NONE guibg=NONE

" Transparent background for search
" hi! Search cterm=NONE, gui=NONE ctermfg=NONE guifg=NONE ctermbg=0 guibg=#2c323c cterm=underline
hi! Search guifg=#FFFFFF ctermbg=NONE guibg=#b58900

hi! MoreMsg cterm=NONE gui=NONE ctermfg=4 guifg=#268bd2 ctermbg=NONE guibg=NONE
hi! ModeMsg cterm=NONE gui=NONE ctermfg=4 guifg=#268bd2 ctermbg=NONE guibg=NONE
hi! LineNr cterm=NONE gui=NONE ctermfg=11 guifg=#4b5364
hi! Question cterm=NONE,bold gui=NONE,bold ctermfg=6 guifg=#2aa198 ctermbg=NONE guibg=NONE
hi! VertSplit cterm=NONE gui=NONE ctermfg=11 guifg=#202530 ctermbg=11 guibg=#202530
" hi! VertSplit cterm=NONE gui=NONE ctermfg=11 guifg=#4b5364 ctermbg=11 guibg=#4b5364
hi! VisualNOS ctermfg=NONE guifg=NONE ctermbg=0 guibg=#282c34 cterm=NONE,reverse gui=NONE,reverse
hi! WarningMsg cterm=NONE,bold gui=NONE,bold ctermfg=9 guifg=#2aa198 ctermbg=NONE guibg=NONE
hi! WildMenu ctermbg=15 guibg=#fdf6e3 ctermfg=0 guifg=#282c34 cterm=NONE,reverse gui=NONE,reverse
hi! Folded cterm=NONE,bold gui=NONE,bold ctermfg=14 guifg=#51525f guisp=#282c34
hi! FoldColumn cterm=NONE gui=NONE ctermfg=14 guifg=#93a1a1

" Nerdtree colors_name
" hi def link NERDTreeFile NerdBlue
hi def link NERDTreeDir DirectoryFileName
hi def link NERDTreeUp NerdBlue
hi def link NERDTreeFile FileName
hi def link NERDTreeExecFile FileName
hi def link NERDTreeCWD NerdBlue
hi def link NERDTreeOpenable CloseStateIcon
hi def link NERDTreeClosable OpenStateIcon
hi def link NERDTreeIgnore ignore
hi def link NERDTreeRO WarningMsg
hi def link NERDTreeBookmark Statement
hi def link NERDTreeFlags TreeFlags
hi def link NERDTreePart Special
hi def link NERDTreePartFile Type
hi def link NERDTreeDirSlash Identifier
" hi def link NERDTreeGitStatusDirDirty GitDirty

hi! NERDTreeGitStatusStaged cterm=NONE gui=NONE ctermfg=2 guifg=#2aa198 ctermbg=0 guisp=#2aa198
" hi! NERDTreeFlags cterm=NONE gui=NONE ctermfg=4 guifg=#268bd2 ctermbg=NONE guibg=NONE
hi! NERDTreeGitStatusDirDirty cterm=NONE gui=NONE,bold ctermfg=4 guifg=#4a76ce ctermbg=NONE guibg=NONE
hi! NERDTreeGitStatusDirty cterm=NONE gui=NONE,bold guifg=red ctermbg=NONE guibg=NONE
hi! NERDTreeFile cterm=NONE gui=NONE ctermfg=4 guifg=#4a76ce ctermbg=NONE guibg=NONE
hi! def link NERDTreeExecFile NERDTreeFile
hi! NERDTreeGitStatusModified cterm=NONE gui=NONE,bold ctermfg=4 guifg=#b58900 ctermbg=NONE guibg=NONE

hi! NerdBlue cterm=NONE gui=NONE ctermfg=4 guifg=#4a76ce ctermbg=NONE guibg=NONE
hi! FileName cterm=NONE gui=NONE ctermfg=4 guifg=#93a1a1 ctermbg=NONE guibg=NONE
hi! DirectoryFileName cterm=NONE gui=NONE,bold ctermfg=4 guifg=#8787af ctermbg=NONE guibg=NONE
hi! OpenStateIcon cterm=NONE gui=NONE ctermfg=4 guifg=#61afef ctermbg=NONE guibg=NONE
hi! CloseStateIcon cterm=NONE gui=NONE ctermfg=4 guifg=#4a76ce ctermbg=NONE guibg=NONE
hi! GitDirty cterm=NONE gui=NONE ctermfg=4 guifg=#7d4700 ctermbg=NONE guibg=NONE
hi! TreeFlags cterm=NONE,bold gui=NONE ctermfg=4 guifg=#8787af ctermbg=NONE guibg=NONE

" End Nerdtree

" hi! DiffAdd cterm=NONE gui=NONE ctermfg=2 guifg=#009900 ctermbg=0 guibg=#282c34 guisp=#009900
" hi! DiffChange cterm=NONE gui=NONE ctermfg=3  ctermbg=0 guibg=#484938 guisp=#b58900
" hi! DiffDelete cterm=NONE gui=NONE ctermfg=1  ctermbg=0 guibg=#592a32
" hi! DiffText cterm=NONE gui=NONE ctermfg=4 guifg=#268bd2 ctermbg=0 guibg=#484938 guisp=#268bd2

hi DiffAdd ctermbg=235 ctermfg=108 guibg=#87af87 guifg=#262626
hi DiffChange ctermbg=235 ctermfg=103 guibg=#8787af guifg=#262626
hi DiffDelete ctermbg=235 ctermfg=131 guibg=#592a32 guifg=#262626
hi DiffText ctermbg=235 ctermfg=208 guibg=#b58900 guifg=#262626

" endif
hi! SignColumn cterm=NONE gui=NONE ctermfg=14 guifg=#93a1a1 ctermbg=NONE guibg=NONE
hi! Conceal cterm=NONE gui=NONE ctermfg=4 guifg=#268bd2 ctermbg=NONE guibg=NONE
hi! SpellBad cterm=NONE,undercurl gui=NONE,undercurl ctermfg=NONE guifg=orange ctermbg=NONE guibg=NONE guisp=#d33682
hi! SpellCap cterm=NONE,undercurl gui=NONE,undercurl ctermfg=NONE guifg=NONE ctermbg=NONE guibg=NONE guisp=#6c71c4
hi! SpellRare cterm=NONE,undercurl gui=NONE,undercurl ctermfg=NONE guifg=NONE ctermbg=NONE guibg=NONE guisp=#2aa198
hi! SpellLocal cterm=NONE,undercurl gui=NONE,undercurl ctermfg=NONE guifg=NONE ctermbg=NONE guibg=NONE guisp=#b58900

" Autocomplete menu "selection----------------------------------------------------------------------------

" Autocomplete menu background
hi! Pmenu ctermfg=0 guifg=#abacac ctermbg=14 guibg=#21252b cterm=NONE gui=NONE

" Autocomplete menu selected text
" hi! PmenuSel ctermfg=15 guifg=white ctermbg=11 guibg=#3c85e4 cterm=NONE gui=NONE
hi! PmenuSel guifg=#6893ca ctermbg=11 guibg=#2c313a cterm=NONE,bold gui=NONE

" End autocomplete menu "selection------------------------------------------------------------------------

hi! PmenuSbar ctermfg=15 guifg=black ctermbg=14 guibg=darkgrey cterm=NONE gui=NONE,
hi! PmenuThumb ctermfg=14 guifg=grey ctermbg=8 guibg=#282c34 cterm=NONE,reverse gui=NONE,reverse

" Menu and menu item preview border color
highlight! BorderBG guibg=NONE guifg=#4b5364

hi! CursorColumn cterm=NONE gui=NONE ctermfg=NONE guifg=NONE ctermbg=0 guibg=#282c34

"Visual cursor transparent selection
hi! CursorLine cterm=NONE gui=NONE ctermfg=NONE guifg=NONE ctermbg=0 guibg=#2c323c guisp=#eee8d5
hi! ColorColumn cterm=NONE gui=NONE ctermfg=NONE guifg=NONE ctermbg=0 guibg=#282c34
hi! link lCursor Cursor

" if has('nvim')
"   hi! link TermCursor Cursor
"   hi! TermCursorNC ctermfg=8 guifg=#282c34 ctermbg=11 guibg=#4b5364 cterm=NONE gui=NONE
"   let g:terminal_color_0 = '#282c34'
"   let g:terminal_color_1 = '#dc322f'
"   let g:terminal_color_2 = '#c678dd'
"   let g:terminal_color_3 = '#b58900'
"   let g:terminal_color_4 = '#268bd2'
"   let g:terminal_color_5 = '#d33682'
"   let g:terminal_color_6 = '#2aa198'
"   let g:terminal_color_7 = '#eee8d5'
"   let g:terminal_color_8 = '#282c34'
"   let g:terminal_color_9 = '#61afef'
"   let g:terminal_color_10 = '#586e75'
"   let g:terminal_color_11 = '#4b5364'
"   let g:terminal_color_12 = '#839496'
"   let g:terminal_color_13 = '#6c71c4'
"   let g:terminal_color_14 = '#93a1a1'
"   let g:terminal_color_15 = '#fdf6e3'
" endif
hi! link vimVar Identifier
hi! link vimFunc Function
hi! link vimUserFunc Function
hi! link helpSpecial Special
hi! link vimSet Normal
hi! link vimSetEqual Normal
hi! vimCommentString cterm=NONE gui=NONE ctermfg=13 guifg=#6c71c4 ctermbg=NONE guibg=NONE
hi! vimCommand cterm=NONE gui=NONE ctermfg=3 guifg=#b58900 ctermbg=NONE guibg=NONE
hi! vimCmdSep cterm=NONE,bold gui=NONE,bold ctermfg=4 guifg=#268bd2 ctermbg=NONE guibg=NONE
hi! helpExample cterm=NONE gui=NONE ctermfg=7 guifg=#eee8d5 ctermbg=NONE guibg=NONE
hi! helpOption cterm=NONE gui=NONE ctermfg=6 guifg=#2aa198 ctermbg=NONE guibg=NONE
hi! helpNote cterm=NONE gui=NONE ctermfg=5 guifg=#d33682 ctermbg=NONE guibg=NONE
hi! helpVim cterm=NONE gui=NONE ctermfg=5 guifg=#d33682 ctermbg=NONE guibg=NONE
hi! helpHyperTextJump cterm=NONE gui=NONE ctermfg=4 guifg=#268bd2 ctermbg=NONE guibg=NONE
hi! helpHyperTextEntry cterm=NONE gui=NONE ctermfg=2 guifg=#c678dd ctermbg=NONE guibg=NONE
hi! vimIsCommand cterm=NONE gui=NONE ctermfg=12 guifg=#839496 ctermbg=NONE guibg=NONE
hi! vimSynMtchOpt cterm=NONE gui=NONE ctermfg=3 guifg=#b58900 ctermbg=NONE guibg=NONE
hi! vimSynType cterm=NONE gui=NONE ctermfg=6 guifg=#2aa198 ctermbg=NONE guibg=NONE
hi! vimHiLink cterm=NONE gui=NONE ctermfg=4 guifg=#268bd2 ctermbg=NONE guibg=NONE
hi! vimHiGroup cterm=NONE gui=NONE ctermfg=4 guifg=#268bd2 ctermbg=NONE guibg=NONE
hi! vimHiKeyList cterm=NONE,bold gui=NONE,bold ctermfg=4 guifg=#009900 ctermbg=NONE guibg=NONE
hi! vimHiAttrib cterm=NONE,bold gui=NONE,bold ctermfg=4 guifg=#2aa198 ctermbg=NONE guibg=NONE
hi! vimGroup cterm=NONE,bold gui=NONE,bold ctermfg=4 guifg=#6c71c4 ctermbg=NONE guibg=NONE
hi! diffAdded cterm=NONE gui=NONE ctermfg=2 guifg=#009900 ctermbg=0 guibg=#282c34 guisp=#009900
hi! gitcommitComment cterm=NONE gui=NONE,italic ctermfg=11 guifg=#4b5364 ctermbg=NONE guibg=NONE
hi! link gitcommitUntracked gitcommitComment
hi! link gitcommitDiscarded gitcommitComment
hi! link gitcommitSelected gitcommitComment
hi! gitcommitUnmerged cterm=NONE,bold gui=NONE,bold ctermfg=2 guifg=#c678dd ctermbg=NONE guibg=NONE
hi! gitcommitOnBranch cterm=NONE,bold gui=NONE,bold ctermfg=11 guifg=#4b5364 ctermbg=NONE guibg=NONE
hi! gitcommitBranch cterm=NONE,bold gui=NONE,bold ctermfg=5 guifg=#d33682 ctermbg=NONE guibg=NONE
hi! link gitcommitNoBranch gitcommitBranch
hi! gitcommitDiscardedType cterm=NONE gui=NONE ctermfg=1 guifg=#dc322f ctermbg=NONE guibg=NONE
hi! gitcommitSelectedType cterm=NONE gui=NONE ctermfg=2 guifg=#c678dd ctermbg=NONE guibg=NONE
hi! gitcommitHeader cterm=NONE gui=NONE ctermfg=11 guifg=#4b5364 ctermbg=NONE guibg=NONE
hi! gitcommitUntrackedFile cterm=NONE,bold gui=NONE,bold ctermfg=6 guifg=#2aa198 ctermbg=NONE guibg=NONE
hi! gitcommitDiscardedFile cterm=NONE,bold gui=NONE,bold ctermfg=1 guifg=#dc322f ctermbg=NONE guibg=NONE
hi! gitcommitSelectedFile cterm=NONE,bold gui=NONE,bold ctermfg=2 guifg=#c678dd ctermbg=NONE guibg=NONE
hi! gitcommitUnmergedFile cterm=NONE,bold gui=NONE,bold ctermfg=3 guifg=#b58900 ctermbg=NONE guibg=NONE
hi! gitcommitFile cterm=NONE,bold gui=NONE,bold ctermfg=14 guifg=#93a1a1 ctermbg=NONE guibg=NONE
hi! link gitcommitDiscardedArrow gitcommitDiscardedFile
hi! link gitcommitSelectedArrow gitcommitSelectedFile
hi! link gitcommitUnmergedArrow gitcommitUnmergedFile
hi! htmlTag cterm=NONE gui=NONE ctermfg=11 guifg=#4b5364 ctermbg=NONE guibg=NONE
hi! htmlEndTag cterm=NONE gui=NONE ctermfg=11 guifg=#4b5364 ctermbg=NONE guibg=NONE
hi! htmlTagN cterm=NONE,bold gui=NONE,bold ctermfg=7 guifg=#eee8d5 ctermbg=NONE guibg=NONE
hi! htmlTagName cterm=NONE,bold gui=NONE,bold cterm=italic ctermfg=4 guifg=#268bd2 ctermbg=NONE guibg=NONE
hi! htmlSpecialTagName cterm=NONE gui=NONE,italic ctermfg=4 guifg=#268bd2 ctermbg=NONE guibg=NONE
hi! htmlArg cterm=NONE gui=NONE ctermfg=12 guifg=#d19a62 ctermbg=NONE guibg=NONE
hi! javaScript cterm=NONE gui=NONE ctermfg=3 guifg=#b58900 ctermbg=NONE guibg=NONE
hi! perlHereDoc ctermfg=7 guifg=#eee8d5 ctermbg=8 guibg=#282c34 cterm=NONE gui=NONE
hi! perlVarPlain ctermfg=3 guifg=#b58900 ctermbg=8 guibg=#282c34 cterm=NONE gui=NONE
hi! perlStatementFileDesc ctermfg=6 guifg=#2aa198 ctermbg=8 guibg=#282c34 cterm=NONE gui=NONE
hi! texStatement ctermfg=6 guifg=#2aa198 ctermbg=8 guibg=#282c34 cterm=NONE gui=NONE
hi! texMathZoneX ctermfg=3 guifg=#b58900 ctermbg=8 guibg=#282c34 cterm=NONE gui=NONE
hi! texMathMatcher ctermfg=3 guifg=#b58900 ctermbg=8 guibg=#282c34 cterm=NONE gui=NONE
hi! texMathMatcher ctermfg=3 guifg=#b58900 ctermbg=8 guibg=#282c34 cterm=NONE gui=NONE
hi! texRefLabel ctermfg=3 guifg=#b58900 ctermbg=8 guibg=#282c34 cterm=NONE gui=NONE
hi! rubyDefine ctermfg=7 guifg=#eee8d5 ctermbg=8 guibg=#282c34 cterm=NONE,bold gui=NONE,bold
hi! cPreCondit ctermfg=9 guifg=#61afef ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! VarId ctermfg=4 guifg=#268bd2 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! ConId ctermfg=3 guifg=#b58900 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! hsImport ctermfg=5 guifg=#d33682 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! hsString ctermfg=12 guifg=#839496 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! hsStructure ctermfg=6 guifg=#2aa198 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! hs_hlFunctionName ctermfg=4 guifg=#268bd2 ctermbg=NONE guibg=NONE
hi! hsStatement ctermfg=6 guifg=#2aa198 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! hsImportLabel ctermfg=6 guifg=#2aa198 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! hs_OpFunctionName ctermfg=3 guifg=#b58900 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! hs_DeclareFunction ctermfg=9 guifg=#61afef ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! hsVarSym ctermfg=6 guifg=#2aa198 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! hsType ctermfg=3 guifg=#b58900 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! hsTypedef ctermfg=6 guifg=#2aa198 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! hsModuleName ctermfg=2 guifg=#c678dd ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! link hsImportParams Delimiter
hi! link hsDelimTypeExport Delimiter
hi! link hsModuleStartLabel hsStructure
hi! link hsModuleWhereLabel hsModuleStartLabel
hi! hsNiceOperator ctermfg=6 guifg=#2aa198 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! hsniceoperator ctermfg=6 guifg=#2aa198 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! pandocTitleBlock ctermfg=4 guifg=#268bd2 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! pandocTitleBlockTitle ctermfg=4 guifg=#268bd2 ctermbg=NONE guibg=NONE cterm=NONE,bold gui=NONE,bold
hi! pandocTitleComment ctermfg=4 guifg=#268bd2 ctermbg=NONE guibg=NONE cterm=NONE,bold gui=NONE,bold
hi! pandocComment ctermfg=11 guifg=#4b5364 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE,italic
hi! pandocVerbatimBlock ctermfg=3 guifg=#b58900 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! link pandocVerbatimBlockDeep pandocVerbatimBlock
hi! link pandocCodeBlock pandocVerbatimBlock
hi! link pandocCodeBlockDelim pandocVerbatimBlock
hi! pandocBlockQuote ctermfg=4 guifg=#268bd2 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! pandocBlockQuoteLeader1 ctermfg=4 guifg=#268bd2 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! pandocBlockQuoteLeader2 ctermfg=6 guifg=#2aa198 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! pandocBlockQuoteLeader3 ctermfg=3 guifg=#b58900 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! pandocBlockQuoteLeader4 ctermfg=1 guifg=#dc322f ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! pandocBlockQuoteLeader5 ctermfg=14 guifg=#93a1a1 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! pandocBlockQuoteLeader6 ctermfg=11 guifg=#4b5364 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! pandocListMarker ctermfg=5 guifg=#d33682 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! pandocListReference ctermfg=5 guifg=#d33682 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! pandocDefinitionBlock ctermfg=13 guifg=#6c71c4 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! pandocDefinitionTerm ctermfg=13 guifg=#6c71c4 ctermbg=NONE guibg=NONE cterm=NONE,standout gui=NONE,standout
hi! pandocDefinitionIndctr ctermfg=13 guifg=#6c71c4 ctermbg=NONE guibg=NONE cterm=NONE,bold gui=NONE,bold
hi! pandocEmphasisDefinition ctermfg=13 guifg=#6c71c4 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE,italic
hi! pandocEmphasisNestedDefinition ctermfg=13 guifg=#6c71c4 ctermbg=NONE guibg=NONE cterm=NONE,bold gui=NONE,bold
hi! pandocStrongEmphasisDefinition ctermfg=13 guifg=#6c71c4 ctermbg=NONE guibg=NONE cterm=NONE,bold gui=NONE,bold
hi! pandocStrongEmphasisNestedDefinition ctermfg=13 guifg=#6c71c4 ctermbg=NONE guibg=NONE cterm=NONE,bold gui=NONE,bold
hi! pandocStrongEmphasisEmphasisDefinition ctermfg=13 guifg=#6c71c4 ctermbg=NONE guibg=NONE cterm=NONE,bold gui=NONE,bold
hi! pandocStrikeoutDefinition ctermfg=13 guifg=#6c71c4 ctermbg=NONE guibg=NONE cterm=NONE,reverse gui=NONE,reverse
hi! pandocVerbatimInlineDefinition ctermfg=13 guifg=#6c71c4 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! pandocSuperscriptDefinition ctermfg=13 guifg=#6c71c4 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! pandocSubscriptDefinition ctermfg=13 guifg=#6c71c4 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! pandocTable ctermfg=4 guifg=#268bd2 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! pandocTableStructure ctermfg=4 guifg=#268bd2 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! link pandocTableStructureTop pandocTableStructre
hi! link pandocTableStructureEnd pandocTableStructre
hi! pandocTableZebraLight ctermfg=4 guifg=#268bd2 ctermbg=8 guibg=#282c34 cterm=NONE gui=NONE
hi! pandocTableZebraDark ctermfg=4 guifg=#268bd2 ctermbg=0 guibg=#282c34 cterm=NONE gui=NONE
hi! pandocEmphasisTable ctermfg=4 guifg=#268bd2 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE,italic
hi! pandocEmphasisNestedTable ctermfg=4 guifg=#268bd2 ctermbg=NONE guibg=NONE cterm=NONE,bold gui=NONE,bold
hi! pandocStrongEmphasisTable ctermfg=4 guifg=#268bd2 ctermbg=NONE guibg=NONE cterm=NONE,bold gui=NONE,bold
hi! pandocStrongEmphasisNestedTable ctermfg=4 guifg=#268bd2 ctermbg=NONE guibg=NONE cterm=NONE,bold gui=NONE,bold
hi! pandocStrongEmphasisEmphasisTable ctermfg=4 guifg=#268bd2 ctermbg=NONE guibg=NONE cterm=NONE,bold gui=NONE,bold
hi! pandocStrikeoutTable ctermfg=4 guifg=#268bd2 ctermbg=NONE guibg=NONE cterm=NONE,reverse gui=NONE,reverse
hi! pandocVerbatimInlineTable ctermfg=4 guifg=#268bd2 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! pandocSuperscriptTable ctermfg=4 guifg=#268bd2 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! pandocSubscriptTable ctermfg=4 guifg=#268bd2 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! pandocHeading ctermfg=9 guifg=#61afef ctermbg=NONE guibg=NONE cterm=NONE,bold gui=NONE,bold
hi! pandocHeadingMarker ctermfg=3 guifg=#b58900 ctermbg=NONE guibg=NONE cterm=NONE,bold gui=NONE,bold
hi! pandocEmphasisHeading ctermfg=9 guifg=#61afef ctermbg=NONE guibg=NONE cterm=NONE,bold gui=NONE,bold
hi! pandocEmphasisNestedHeading ctermfg=9 guifg=#61afef ctermbg=NONE guibg=NONE cterm=NONE,bold gui=NONE,bold
hi! pandocStrongEmphasisHeading ctermfg=9 guifg=#61afef ctermbg=NONE guibg=NONE cterm=NONE,bold gui=NONE,bold
hi! pandocStrongEmphasisNestedHeading ctermfg=9 guifg=#61afef ctermbg=NONE guibg=NONE cterm=NONE,bold gui=NONE,bold
hi! pandocStrongEmphasisEmphasisHeading ctermfg=9 guifg=#61afef ctermbg=NONE guibg=NONE cterm=NONE,bold gui=NONE,bold
hi! pandocStrikeoutHeading ctermfg=9 guifg=#61afef ctermbg=NONE guibg=NONE cterm=NONE,reverse gui=NONE,reverse
hi! pandocVerbatimInlineHeading ctermfg=9 guifg=#61afef ctermbg=NONE guibg=NONE cterm=NONE,bold gui=NONE,bold
hi! pandocSuperscriptHeading ctermfg=9 guifg=#61afef ctermbg=NONE guibg=NONE cterm=NONE,bold gui=NONE,bold
hi! pandocSubscriptHeading ctermfg=9 guifg=#61afef ctermbg=NONE guibg=NONE cterm=NONE,bold gui=NONE,bold
hi! pandocLinkDelim ctermfg=11 guifg=#4b5364 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! pandocLinkLabel ctermfg=4 guifg=#268bd2 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! pandocLinkText ctermfg=4 guifg=#268bd2 ctermbg=NONE guibg=NONE cterm=NONE,bold gui=NONE,bold
hi! pandocLinkURL ctermfg=12 guifg=#839496 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! pandocLinkTitle ctermfg=12 guifg=#839496 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! pandocLinkTitleDelim ctermfg=11 guifg=#4b5364 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE guisp=#839496
hi! pandocLinkDefinition ctermfg=6 guifg=#2aa198 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE guisp=#839496
hi! pandocLinkDefinitionID ctermfg=4 guifg=#268bd2 ctermbg=NONE guibg=NONE cterm=NONE,bold gui=NONE,bold
hi! pandocImageCaption ctermfg=13 guifg=#6c71c4 ctermbg=NONE guibg=NONE cterm=NONE,bold gui=NONE,bold
hi! pandocFootnoteLink ctermfg=2 guifg=#c678dd ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! pandocFootnoteDefLink ctermfg=2 guifg=#c678dd ctermbg=NONE guibg=NONE cterm=NONE,bold gui=NONE,bold
hi! pandocFootnoteInline ctermfg=2 guifg=#c678dd ctermbg=NONE guibg=NONE cterm=NONE,bold gui=NONE,bold
hi! pandocFootnote ctermfg=2 guifg=#c678dd ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! pandocCitationDelim ctermfg=5 guifg=#d33682 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! pandocCitation ctermfg=5 guifg=#d33682 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! pandocCitationID ctermfg=5 guifg=#d33682 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! pandocCitationRef ctermfg=5 guifg=#d33682 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! pandocStyleDelim ctermfg=11 guifg=#4b5364 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! pandocEmphasis ctermfg=14 guifg=#93a1a1 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE,italic
hi! pandocEmphasisNested ctermfg=14 guifg=#93a1a1 ctermbg=NONE guibg=NONE cterm=NONE,bold gui=NONE,bold
hi! pandocStrongEmphasis ctermfg=14 guifg=#93a1a1 ctermbg=NONE guibg=NONE cterm=NONE,bold gui=NONE,bold
hi! pandocStrongEmphasisNested ctermfg=14 guifg=#93a1a1 ctermbg=NONE guibg=NONE cterm=NONE,bold gui=NONE,bold
hi! pandocStrongEmphasisEmphasis ctermfg=14 guifg=#93a1a1 ctermbg=NONE guibg=NONE cterm=NONE,bold gui=NONE,bold
hi! pandocStrikeout ctermfg=11 guifg=#4b5364 ctermbg=NONE guibg=NONE cterm=NONE,reverse gui=NONE,reverse
hi! pandocVerbatimInline ctermfg=3 guifg=#b58900 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! pandocSuperscript ctermfg=13 guifg=#6c71c4 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! pandocSubscript ctermfg=13 guifg=#6c71c4 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! pandocRule ctermfg=4 guifg=#268bd2 ctermbg=NONE guibg=NONE cterm=NONE,bold gui=NONE,bold
hi! pandocRuleLine ctermfg=4 guifg=#268bd2 ctermbg=NONE guibg=NONE cterm=NONE,bold gui=NONE,bold
hi! pandocEscapePair ctermfg=1 guifg=#dc322f ctermbg=NONE guibg=NONE cterm=NONE,bold gui=NONE,bold
hi! pandocCitationRef ctermfg=5 guifg=#d33682 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! pandocNonBreakingSpace ctermfg=1 guifg=#dc322f ctermbg=NONE guibg=NONE cterm=NONE,reverse gui=NONE,reverse
hi! link pandocEscapedCharacter pandocEscapePair
hi! link pandocLineBreak pandocEscapePair
hi! pandocMetadataDelim ctermfg=11 guifg=#4b5364 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! pandocMetadata ctermfg=4 guifg=#268bd2 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! pandocMetadataKey ctermfg=4 guifg=#268bd2 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! pandocMetadata ctermfg=4 guifg=#268bd2 ctermbg=NONE guibg=NONE cterm=NONE,bold gui=NONE,bold
hi! link pandocMetadataTitle pandocMetadata

hi! vimHighlight cterm=NONE gui=NONE,bold ctermfg=4 guifg=#4a76ce ctermbg=NONE guibg=NONE

" Custom TypeScripts Themes

hi! typescriptConditional cterm=NONE gui=NONE,bold ctermfg=4 guifg=#61afef ctermbg=NONE guibg=NONE
hi! typescriptBraces cterm=NONE gui=NONE ctermfg=4 guifg=#61afef ctermbg=NONE guibg=NONE
" hi! typescriptClassBlock cterm=NONE gui=NONE ctermfg=4 guifg=#0e90f3 ctermbg=NONE guibg=NONE
" To make comments Italic

" Color trailing white spaces and tabs
highlight UnwanttedTab guibg=#4a76ce
highlight TrailSpace guibg=#4a76ce
highlight BlankLines guibg=#268bd2

match UnwanttedTab /\t/
match TrailSpace /\s\+$/
match BlankLines /^\(\n\)\{2,}/

" autocmd ColorScheme * highlight UnwanttedTab guibg=darkred guibg=darkred
" autocmd ColorScheme * highlight TrailSpace guibg=darkred guibg=darkred

hi DiagnosticError guifg=Red
hi DiagnosticWarn guifg=DarkOrange
hi DiagnosticInfo guifg=Blue
hi DiagnosticHint guifg=Yellow

highlight IndentBlanklineChar guifg=#46525a gui=nocombine
highlight IndentBlanklineContextChar guifg=#6c7982 gui=nocombine

hi! TSInclude cterm=NONE gui=NONE ctermfg=2 guifg=#c678dd ctermbg=NONE guibg=NONE
hi! TSVariableBuiltin cterm=NONE gui=NONE guifg=#b58900 ctermbg=NONE guibg=NONE
hi! TSPunctBracket cterm=NONE gui=NONE guifg=#4a76ce ctermbg=NONE guibg=NONE
hi! TSConstructor cterm=NONE gui=NONE guifg=#c678dd ctermbg=NONE guibg=NONE
" hi! TSConstructor cterm=NONE gui=NONE guifg=#c678dd ctermbg=NONE guibg=NONE
hi! TSVariable cterm=NONE gui=NONE,bold guifg=#4a76ce ctermbg=NONE guibg=NONE

" Auto Completion colors ================================================================================================
hi! CmpItemAbbrDeprecated guibg=NONE gui=strikethrough guifg=#808080
hi! CmpItemAbbrMatch guibg=NONE guifg=#569CD6
hi! CmpItemAbbrMatchFuzzy guibg=NONE guifg=#569CD6
hi! CmpItemKindVariable guibg=NONE guifg=#9CDCFE
hi! CmpItemKindInterface guibg=NONE guifg=#9CDCFE
hi! CmpItemKindText guibg=NONE guifg=#9CDCFE
hi! CmpItemKindField guibg=NONE guifg=#569CD6
hi! CmpItemKindConstant guibg=NONE guifg=#569CD6
hi! CmpItemKindFunction guibg=NONE guifg=#C586C0
hi! CmpItemKindMethod guibg=NONE guifg=#C586C0
hi! CmpItemKindKeyword guibg=NONE guifg=#D4D4D4
hi! CmpItemKindProperty guibg=NONE guifg=#D4D4D4
hi! CmpItemKindUnit guibg=NONE guifg=#D4D4D4
hi! CmpItemMenu cterm=NONE guibg=NONE gui=NONE,italic guifg=#C792EA
hi! CmpItemKindEvent guibg=#B5585F guifg=#EED8DA
hi! CmpItemKindEnum guibg=#9FBD73 guifg=#C3E88D
hi! CmpItemKindConstructor guibg=#D4BB6C guifg=#FFE082
hi! CmpItemKindReference guibg=#D4BB6C guifg=#FFE082
" hi! CmpItemKindStruct guibg=#A377BF guifg=#EADFF0
" hi! CmpItemKindClass guibg=#A377BF guifg=#EADFF0
" hi! CmpItemKindModule guibg=#A377BF guifg=#EADFF0
" hi! CmpItemKindOperator guibg=#A377BF guifg=#EADFF0
hi! CmpItemKindFolder guibg=#D4A959 guifg=#F5EBD9
hi! CmpItemKindValue guibg=#6C8ED4 guifg=#DDE5F5
hi! CmpItemKindEnumMember guibg=#6C8ED4 guifg=#DDE5F5
hi! CmpItemKindColor guibg=#58B5A8 guifg=#D8EEEB
hi! CmpItemKindTypeParameter guibg=#58B5A8 guifg=#D8EEEB

hi! ModalNormal guifg=grey " this is set in nvim-cmp plug
" END Auto Completion colors ================================================================================================

" Floating window highlight
" hi! NormalFloat guibg=NONE guifg=red
"
" Nvim-tree Highlights=============================================================================================================================
hi! NvimTreeNormal guifg=#687a94
hi! NvimTreeExecFile guifg=#687a94
hi! NvimTreeSpecialFile guifg=#687a94
hi! NvimTreeFolderName gui=bold guifg=#4789eb
hi! NvimTreeOpendFolderName gui=bold guifg=#4789eb
hi! NvimTreeOpenedFolderName gui=bold guifg=#4789eb
hi! NvimTreeFolderIcon gui=bold guifg=#4789eb
hi! NvimTreeFileDirty guifg=#b58900
hi! NvimTreeGitDirty gui=bold guifg=#b58900
" End Nvim-tree Highlights=========================================================================================================================

hi! WinSeparator guifg=#4789eb

" Tree-sitter highlight group mappings
hi! link @function Function
hi! link @variable Identifier
hi! link @type Type
hi! link @constant Constant
hi! link @keyword Keyword
hi! link @string String
hi! link @number Number
hi! link @comment Comment
hi! link @boolean Boolean
hi! link @operator Operator
hi! link @constructor TSConstructor
hi! link @attribute TSConstructor
hi! link @type.builtin TSVariableBuiltin
hi! link @variable.builtin Keyword
" hi! link @function.angular Keyword
" lua vim.api.nvim_set_hl(0, "@variable.member", { link = "Comment", priority = 200 })
" hi! link @variable.member Comment
