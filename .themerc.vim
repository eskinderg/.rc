" Name:         EskTheme colorscheme for Vim 8
" Maintainer:   Eskinder <eskinderget@gmail.com>
" License:      OSI approved MIT license (see end of this file)

set background=dark

hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "EskTheme"

" if !has('gui_running') && get(g:, 'solarized_termtrans', 0)
hi! Normal cterm=NONE gui=NONE ctermfg=14 guifg=#ccd2cf ctermbg=8 guibg=#282c34
hi! CursorLineNr ctermbg=0 guibg=#282c34

" hi! Number ctermbg=0 guibg=#282c34 guifg=red
" hi! Boolean ctermbg=0 guibg=#282c34 guifg=green

"Function frech brackets
hi! Function ctermbg=0 guibg=#282c34 guifg=#767676
hi! Conditional ctermbg=0 guibg=#282c34 guifg=#767676
hi! String ctermbg=0 guibg=#282c34 cterm=italic guifg=#4a8e5e
" hi! Repeat ctermbg=0 guibg=#282c34  guifg=black
hi! Operator ctermbg=0 guibg=#282c34 guifg=#268bd2
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




" typescriptOperator delete new instanceof typeof
hi! typescriptOperator cterm=NONE gui=NONE, cterm=italic ctermfg=11 guifg=#61afef ctermbg=NONE guibg=NONE
" typescriptSource import export from as
hi! typescriptSource cterm=NONE gui=NONE, cterm=italic ctermfg=11 guifg=#61afef ctermbg=NONE guibg=NONE
" typescriptBoolean true false
hi! typescriptBoolean cterm=NONE gui=NONE, cterm=italic ctermfg=11 guifg=#61afef ctermbg=NONE guibg=NONE
hi! typescriptType cterm=NONE gui=NONE, cterm=italic ctermfg=11 guifg=#61afef ctermbg=NONE guibg=NONE
"return
hi! typescriptStatement cterm=NONE gui=NONE, cterm=italic ctermfg=11 guifg=#61afef ctermbg=NONE guibg=NONE
hi! typescriptDecorators cterm=NONE gui=NONE, cterm=italic ctermfg=11 guifg=#61afef ctermbg=NONE guibg=NONE
" syntax keyword typescriptHtmlElemProperties contained className clientHeight clientLeft clientTop clientWidth dir href id innerHTML lang length offsetHeight offsetLeft offsetParent offsetTop offsetWidth scrollHeight scrollLeft scrollTop scrollWidth style tabIndex target title
hi! typescriptHtmlElemProperties cterm=NONE gui=NONE, cterm=italic ctermfg=11 guifg=orange ctermbg=NONE guibg=NONE
hi! typescriptParameters cterm=NONE gui=NONE, cterm=italic ctermfg=11 guifg=orange ctermbg=NONE guibg=NONE
hi! typescriptHtmlElemAttrs cterm=NONE gui=NONE, cterm=italic ctermfg=11 guifg=orange ctermbg=NONE guibg=NONE
hi! typescriptAll cterm=NONE gui=NONE, cterm=italic ctermfg=11 guifg=orange ctermbg=NONE guibg=NONE
hi! typescriptBrowserObjects cterm=NONE gui=NONE, cterm=italic ctermfg=11 guifg=orange ctermbg=NONE guibg=NONE
hi! typescriptFunction cterm=NONE gui=NONE, cterm=italic ctermfg=11 guifg=red ctermbg=NONE guibg=NONE
hi! typescriptRefD cterm=NONE gui=NONE, cterm=italic ctermfg=11 guifg=green ctermbg=NONE guibg=NONE
" hi! typescriptRefS cterm=NONE gui=NONE, cterm=italic ctermfg=11 guifg=blue ctermbg=NONE guibg=NONE
" hi! typescriptPrototype cterm=NONE gui=NONE, cterm=italic ctermfg=11 guifg=blue ctermbg=NONE guibg=NONE

hi! Comment cterm=NONE gui=NONE, cterm=italic ctermfg=11 guifg=#4b5364 ctermbg=NONE guibg=NONE
hi! Constant cterm=NONE gui=NONE ctermfg=6 guifg=#2aa198 ctermbg=NONE guibg=NONE

"this keyword
hi! Identifier cterm=NONE gui=NONE ctermfg=4 guifg=#61afef ctermbg=NONE guibg=NONE
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
" if get(g:, 'solarized_old_cursor_style', 0)
"   hi! Cursor cterm=NONE gui=NONE ctermfg=8 guifg=#282c34 ctermbg=14 guibg=#93a1a1
" else
"   hi! Cursor cterm=NONE gui=NONE ctermfg=15 guifg=#fdf6e3 ctermbg=4 guibg=#268bd2
" endif
" if get(g:, "solarized_visibility", "") == "high"
"   hi! SpecialKey cterm=NONE,reverse gui=NONE,reverse ctermfg=9 guifg=#61afef ctermbg=NONE guibg=NONE
"   hi! NonText cterm=NONE,bold gui=NONE,bold ctermfg=9 guifg=#61afef ctermbg=NONE guibg=NONE
"   hi! CursorLineNr cterm=NONE, gui=NONE, ctermfg=9 guifg=#61afef
"   hi! Title cterm=NONE,bold gui=NONE,bold ctermfg=3 guifg=#b58900 ctermbg=NONE guibg=NONE
" elseif get(g:, "solarized_visibility", "") == "low"
"   hi! SpecialKey cterm=NONE,bold gui=NONE,bold ctermfg=0 guifg=#282c34 ctermbg=NONE guibg=NONE
"   hi! NonText cterm=NONE,bold gui=NONE,bold ctermfg=0 guifg=#282c34 ctermbg=NONE guibg=NONE
"   hi! CursorLineNr cterm=NONE, gui=NONE, ctermfg=11 guifg=#4b5364
"   hi! Title cterm=NONE,bold gui=NONE,bold ctermfg=11 guifg=#4b5364 ctermbg=NONE guibg=NONE
" else
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
" if get(g:, "solarized_statusline", "") == "low"
"   hi! StatusLine ctermfg=11 guifg=#4b5364 ctermbg=15 guibg=#fdf6e3 cterm=NONE,reverse gui=NONE,reverse
"   hi! StatusLineNC ctermfg=11 guifg=#4b5364 ctermbg=0 guibg=#282c34 cterm=NONE,reverse gui=NONE,reverse
"   hi! TabLine ctermfg=11 guifg=#4b5364 ctermbg=0 guibg=#282c34 cterm=NONE,reverse gui=NONE,reverse
"   hi! TabLineFill ctermfg=11 guifg=#4b5364 ctermbg=0 guibg=#282c34 cterm=NONE,reverse gui=NONE,reverse
"   hi! TabLineSel ctermfg=14 guifg=#93a1a1 ctermbg=15 guibg=#fdf6e3 cterm=NONE,reverse gui=NONE,reverse
" else
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

hi! CursorLine cterm=NONE gui=NONE ctermfg=NONE guifg=NONE ctermbg=0 guibg=#2c323c guisp=#eee8d5
" Transparent background for search
" hi! Search cterm=NONE, gui=NONE ctermfg=NONE guifg=NONE ctermbg=0 guibg=#2c323c cterm=underline
hi! Search  guifg=black guibg=darkgreen guifg=black

hi! MoreMsg cterm=NONE gui=NONE ctermfg=4 guifg=#268bd2 ctermbg=NONE guibg=NONE
hi! ModeMsg cterm=NONE gui=NONE ctermfg=4 guifg=#268bd2 ctermbg=NONE guibg=NONE
hi! LineNr cterm=NONE gui=NONE ctermfg=11 guifg=#4b5364
hi! Question cterm=NONE,bold gui=NONE,bold ctermfg=6 guifg=#2aa198 ctermbg=NONE guibg=NONE
hi! VertSplit cterm=NONE gui=NONE ctermfg=11 guifg=#202530 ctermbg=11 guibg=#202530
" hi! VertSplit cterm=NONE gui=NONE ctermfg=11 guifg=#4b5364 ctermbg=11 guibg=#4b5364
hi! VisualNOS ctermfg=NONE guifg=NONE ctermbg=0 guibg=#282c34 cterm=NONE,reverse gui=NONE,reverse
hi! WarningMsg cterm=NONE,bold gui=NONE,bold ctermfg=9 guifg=#61afef ctermbg=NONE guibg=NONE
hi! WildMenu ctermbg=15 guibg=#fdf6e3 ctermfg=0 guifg=#282c34 cterm=NONE,reverse gui=NONE,reverse
hi! Folded cterm=NONE,bold gui=NONE,bold ctermfg=14 guifg=#51525f guisp=#282c34
hi! FoldColumn cterm=NONE gui=NONE ctermfg=14 guifg=#93a1a1

" if get(g:, "solarized_diffmode", "") == "high"
"   hi! DiffAdd cterm=NONE,reverse gui=NONE,reverse ctermfg=2 guifg=#009900 ctermbg=NONE guibg=#009900
"   hi! DiffChange cterm=NONE,reverse gui=NONE,reverse ctermfg=3 guifg=#b58900 ctermbg=NONE guibg=NONE
"   hi! DiffDelete cterm=NONE,reverse gui=NONE,reverse ctermfg=1 guifg=#dc322f ctermbg=NONE guibg=NONE
"   hi! DiffText cterm=NONE,reverse gui=NONE,reverse ctermfg=4 guifg=#268bd2 ctermbg=NONE guibg=NONE
" elseif get(g:, "solarized_diffmode", "") == "low"
"   hi! DiffAdd cterm=NONE gui=NONE ctermfg=2 guifg=#009900 ctermbg=NONE guibg=NONE guisp=#009900
"   hi! DiffChange cterm=NONE gui=NONE ctermfg=3 guifg=#b58900 ctermbg=NONE guibg=NONE guisp=#b58900
"   hi! DiffDelete cterm=NONE,bold gui=NONE,bold ctermfg=1 guifg=#dc322f ctermbg=NONE guibg=NONE
"   hi! DiffText cterm=NONE gui=NONE ctermfg=4 guifg=#268bd2 ctermbg=NONE guibg=NONE guisp=#268bd2
" elseif get(g:, "solarized_diffmode", "") == "bold"
"   hi! DiffAdd cterm=NONE,bold gui=NONE,bold ctermfg=2 guifg=#009900 ctermbg=0 guibg=#282c34 guisp=#009900
"   hi! DiffChange cterm=NONE,bold gui=NONE,bold ctermfg=3 guifg=#b58900 ctermbg=0 guibg=#282c34 guisp=#b58900
"   hi! DiffDelete cterm=NONE,bold gui=NONE,bold ctermfg=1 guifg=#dc322f ctermbg=0 guibg=#282c34
"   hi! DiffText cterm=NONE,bold gui=NONE,bold ctermfg=4 guifg=#268bd2 ctermbg=0 guibg=#282c34 guisp=#268bd2
" else
hi! DiffAdd cterm=NONE gui=NONE ctermfg=2 guifg=#009900 ctermbg=0 guibg=#282c34 guisp=#009900
hi! DiffChange cterm=NONE gui=NONE ctermfg=3 guifg=#b58900 ctermbg=0 guibg=#282c34 guisp=#b58900
hi! DiffDelete cterm=NONE gui=NONE ctermfg=1 guifg=#dc322f ctermbg=0 guibg=#282c34
hi! DiffText cterm=NONE gui=NONE ctermfg=4 guifg=#268bd2 ctermbg=0 guibg=#484938 guisp=#268bd2
" endif
hi! SignColumn cterm=NONE gui=NONE ctermfg=14 guifg=#93a1a1 ctermbg=NONE guibg=NONE
hi! Conceal cterm=NONE gui=NONE ctermfg=4 guifg=#268bd2 ctermbg=NONE guibg=NONE
hi! SpellBad cterm=NONE,undercurl gui=NONE,undercurl ctermfg=NONE guifg=NONE ctermbg=NONE guibg=NONE guisp=#d33682
hi! SpellCap cterm=NONE,undercurl gui=NONE,undercurl ctermfg=NONE guifg=NONE ctermbg=NONE guibg=NONE guisp=#6c71c4
hi! SpellRare cterm=NONE,undercurl gui=NONE,undercurl ctermfg=NONE guifg=NONE ctermbg=NONE guibg=NONE guisp=#2aa198
hi! SpellLocal cterm=NONE,undercurl gui=NONE,undercurl ctermfg=NONE guifg=NONE ctermbg=NONE guibg=NONE guisp=#b58900
hi! Pmenu ctermfg=14 guifg=#93a1a1 ctermbg=0 guibg=#282c34 cterm=NONE,reverse gui=NONE,reverse
"Autocomplete menu "selection------------------------------------------------------------------------------
hi! PmenuSel ctermfg=11 guifg=#268bd2 ctermbg=15 guibg=#fdf6e3 cterm=NONE,reverse gui=NONE,reverse
hi! PmenuSbar ctermfg=15 guifg=#fdf6e3 ctermbg=14 guibg=#93a1a1 cterm=NONE,reverse gui=NONE,reverse
hi! PmenuThumb ctermfg=14 guifg=#93a1a1 ctermbg=8 guibg=#282c34 cterm=NONE,reverse gui=NONE,reverse
hi! CursorColumn cterm=NONE gui=NONE ctermfg=NONE guifg=NONE ctermbg=0 guibg=#282c34
"Visual transparent selection
hi! CursorLine cterm=NONE gui=NONE ctermfg=NONE guifg=NONE ctermbg=0 guibg=#2c323c guisp=#eee8d5
hi! ColorColumn cterm=NONE gui=NONE ctermfg=NONE guifg=NONE ctermbg=0 guibg=#282c34
hi! link lCursor Cursor
if has('nvim')
  hi! link TermCursor Cursor
  hi! TermCursorNC ctermfg=8 guifg=#282c34 ctermbg=11 guibg=#4b5364 cterm=NONE gui=NONE
  let g:terminal_color_0 = '#282c34'
  let g:terminal_color_1 = '#dc322f'
  let g:terminal_color_2 = '#c678dd'
  let g:terminal_color_3 = '#b58900'
  let g:terminal_color_4 = '#268bd2'
  let g:terminal_color_5 = '#d33682'
  let g:terminal_color_6 = '#2aa198'
  let g:terminal_color_7 = '#eee8d5'
  let g:terminal_color_8 = '#282c34'
  let g:terminal_color_9 = '#61afef'
  let g:terminal_color_10 = '#586e75'
  let g:terminal_color_11 = '#4b5364'
  let g:terminal_color_12 = '#839496'
  let g:terminal_color_13 = '#6c71c4'
  let g:terminal_color_14 = '#93a1a1'
  let g:terminal_color_15 = '#fdf6e3'
endif
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
hi! vimGroup cterm=NONE,bold gui=NONE,bold ctermfg=4 guifg=#268bd2 ctermbg=NONE guibg=NONE
hi! link diffAdded Statement
hi! link diffLine Identifier
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
hi! htmlArg cterm=NONE gui=NONE ctermfg=12 guifg=#4b5364 ctermbg=NONE guibg=NONE
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

if get(g:, "solarized_term_italics", 0) != 0
  hi Comment cterm=italic
  hi gitcommitComment cterm=italic
  hi htmlSpecialTagName cterm=italic
  hi pandocComment cterm=italic
  hi pandocEmphasisDefinition cterm=italic
  hi pandocEmphasisTable cterm=italic
  hi pandocEmphasis cterm=italic
endif

"Trailing whitespaces
"Must Me insetred before the colorscheme
highlight UnwanttedTab ctermbg=red guibg=darkred
highlight TrailSpace guibg=red ctermbg=darkred
match UnwanttedTab /\t/
match TrailSpace / \+$/

autocmd ColorScheme * highlight UnwanttedTab ctermbg=darkred guibg=darkred
autocmd ColorScheme * highlight TrailSpace ctermbg=darkred guibg=red ctermbg=darkred

" hi clear CursorLine
" hi CursorLine gui=underline cterm=underline

" License "{{{
" ---------------------------------------------------------------------
"
" Copyright (c) 2018 Eskinder Gezahagne
"
" Permission is hereby granted, free of charge, to any person obtaining a copy
" of this software and associated documentation files (the "Software"), to deal
" in the Software without restriction, including without limitation the rights
" to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
" copies of the Software, and to permit persons to whom the Software is
" furnished to do so, subject to the following conditions:
"
" The above copyright notice and this permission notice shall be included in
" all copies or substantial portions of the Software.
"
" THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
" IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
" FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
" AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
" LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
" OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
" THE SOFTWARE.
"
" vim:foldmethod=marker:foldlevel=0
"}}}