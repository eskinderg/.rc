"==================================================================================
"               _             __        _               ___             __ _
"   /\/\   __ _(_)_ __     /\ \ \__   _(_)_ __ ___     / __\___  _ __  / _(_) __ _
"  /    \ / _` | | '_ \   /  \/ /\ \ / / | '_ ` _ \   / /  / _ \| '_ \| |_| |/ _` |
" / /\/\ \ (_| | | | | | / /\  /  \ V /| | | | | | | / /__| (_) | | | |  _| | (_| |
" \/    \/\__,_|_|_| |_| \_\ \/    \_/ |_|_| |_| |_| \____/\___/|_| |_|_| |_|\__, |
"                                                                            |___/
" ~/.config/nvim/init.vim && ~/.vimrc
"==================================================================================

if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif

"Plug For VIM
if empty(glob('~/.vim/autoload/plug.vim')) " Setting up plug for first time use
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

"Plug For Neovim
if empty(glob('~/.config/nvim/autoload/plug.vim')) " Setting up plug for first time use
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

" Source all file iteratively
" for f in split(glob('~/.rc/.config/*.vim'), '\n') " Include files from config directory
"     exe 'source' f
" endfor

source $HOME/.rc/.config/setDefaultOptions.vim
source $HOME/.rc/.config/startup.vim
source $HOME/.rc/.config/plugins.vim
source $HOME/.rc/.config/globalSettings.vim
source $HOME/.rc/OneDark.vim
source $HOME/.rc/.config/keymappings.vim
source $HOME/.rc/.config/ale.vim
source $HOME/.rc/.config/AngularFilesPlugin.vim
source $HOME/.rc/.config/gvim.vim
source $HOME/.rc/.config/highlightsGroupShow.vim
source $HOME/.rc/.config/language-client.vim
source $HOME/.rc/.config/languageserver.vim
source $HOME/.rc/.config/gitgutter.vim
source $HOME/.rc/.config/omnisharpConfig.vim
source $HOME/.rc/.config/saveSession.vim
source $HOME/.rc/.config/searchPlugin.vim
source $HOME/.rc/.config/syntasticPluginConfig.vim
source $HOME/.rc/.config/vim-fold.vim
source $HOME/.rc/.config/vim-note.vim
source $HOME/.rc/.config/prettier.vim

if (has("nvim"))
  luafile $HOME/.rc/.config/nvim-tree.lua
  luafile $HOME/.rc/.config/nvim-cmp.lua
  luafile $HOME/.rc/.config/lsp-config-icons.lua
  luafile $HOME/.rc/.config/lsp/tsserver-angularls-cssls-eslint.lua
  luafile $HOME/.rc/.config/lsp/omnisharp.lua
  luafile $HOME/.rc/.config/lsp/jsonls.lua
  luafile $HOME/.rc/.config/lsp/yamlls.lua
  luafile $HOME/.rc/.config/lsp/lsp_signature.lua
  luafile /home/esk/.rc/.config/lsp/angularls.lua
  luafile $HOME/.rc/.config/treesitter.lua
  " luafile $HOME/.rc/.config/nvim-colorizer.lua
  luafile $HOME/.rc/.config/indent-line.lua
  luafile $HOME/.rc/.config/lualine.lua
  luafile $HOME/.rc/.config/lua configs/nvim-autopairs.lua
  luafile $HOME/.rc/.config/lua configs/nvim-ts-autotag.lua
  luafile $HOME/.rc/.config/telescope.lua
endif
