"               ==================================================================================
"                              _             __        _               ___             __ _
"                  /\/\   __ _(_)_ __     /\ \ \__   _(_)_ __ ___     / __\___  _ __  / _(_) __ _
"                 /    \ / _` | | '_ \   /  \/ /\ \ / / | '_ ` _ \   / /  / _ \| '_ \| |_| |/ _` |
"                / /\/\ \ (_| | | | | | / /\  /  \ V /| | | | | | | / /__| (_) | | | |  _| | (_| |
"                \/    \/\__,_|_|_| |_| \_\ \/    \_/ |_|_| |_| |_| \____/\___/|_| |_|_| |_|\__, |
"                                                                                           |___/
"               ==================================================================================

if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif

"For VIM
if empty(glob('~/.vim/autoload//plug.vim')) " Setting up plug for the first time
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

if empty(glob('~/.config/nvim/autoload/plug.vim')) " Setting up plug for the first time
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

" for f in split(glob('~/.rc/.config/*.vim'), '\n') " Include files from config directory
"     exe 'source' f
" endfor

source $HOME/.rc/.config/plugins.vim
source $HOME/.rc/.config/setDefaultOptions.vim
source $HOME/.rc/.config/globalSettings.vim
source $HOME/.rc/.themerc.vim
source $HOME/.rc/.config/startup.vim
source $HOME/.rc/.config/keymappings.vim
source $HOME/.rc/.config/deoplete.vim
source $HOME/.rc/.config/airlinePluginConfig.vim
source $HOME/.rc/.config/ale.vim
source $HOME/.rc/.config/AngularFilesPlugin.vim
source $HOME/.rc/.config/gvim.vim
source $HOME/.rc/.config/highlightsGroupShow.vim
source $HOME/.rc/.config/language-client.vim
source $HOME/.rc/.config/languageserver.vim
source $HOME/.rc/.config/Nerdtree.vim
" source $HOME/.rc/.config/coc.vim
source $HOME/.rc/.config/omnisharpConfig.vim
source $HOME/.rc/.config/saveSession.vim
source $HOME/.rc/.config/searchPlugin.vim
source $HOME/.rc/.config/syntasticPluginConfig.vim
source $HOME/.rc/.config/vim-fold.vim
source $HOME/.rc/.config/vim-note.vim
