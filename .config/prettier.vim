let g:prettier#autoformat = 0 ""Enable auto formatting of files that have "@format" or "@prettier" tag
let g:prettier#autoformat_require_pragma = 0 " Allow auto formatting for files without "@format" or "@prettier" tag
let g:prettier#quickfix_enabled = 0 "By default parsing errors will open the quickfix but can also be disabled
let g:prettier#quickfix_auto_focus = 0 "By default we auto focus on the quickfix when there are errors but can also be disabled
"
" when running at every change you may want to disable quickfix
let g:prettier#quickfix_enabled = 0

" autocmd TextChanged,InsertLeave *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.svelte,*.yaml,*.html PrettierAsync
