if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif

if empty(glob('~/.config/nvim/autoload/plug.vim')) " Setting up plug for the first time
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

for f in split(glob('~/.rc/.config/*.vim'), '\n') " Include files from config directory
    exe 'source' f
endfor
