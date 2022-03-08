# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# export TERM=screen-256color-bce
export TERM=xterm-256color

DEFAULT_USER=$USER

# Path to your oh-my-zsh installation.
export ZSH=/home/esk/.oh-my-zsh

# ZSH_THEME="robbyrussell"
# ZSH_THEME="duellj"
# ZSH_THEME="spaceship"
# ZSH_THEME="amuse"
# ZSH_THEME="agnoster"
# ZSH_THEME="powerlevel9k/powerlevel9k"
# ZSH_THEME=powerlevel10k/powerlevel10k

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="mm/dd/yyyy"

HISTSIZE=100000
SAVEHIST=100000

# Avoid duplicate entries=========================================================================
setopt EXTENDED_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS
# Avoid duplicate entries End=========================================================================

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git docker npm node tmux zsh-completions vi-mode zsh-syntax-highlighting)
autoload -U compinit && compinit

source $ZSH/oh-my-zsh.sh

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

bindkey '^ ' autosuggest-accept

# export KEYTIMEOUT=1

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

export NVM_DIR="/home/esk/.nvm" #Nodejs version manager
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# Auto switch node version from .nvmrc ===============================================================
autoload -U add-zsh-hook
load-nvmrc() {
local node_version="$(nvm version)"
local nvmrc_path="$(nvm_find_nvmrc)"

if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
        nvm install
    elif [ "$nvmrc_node_version" != "$node_version" ]; then
        nvm use
    fi
elif [ "$node_version" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc
# Auto switch node version from .nvmrc ===============================================================

alias pbcopy="xclip -sel clip"

alias suroot="sudo -E -s" # remain loggedin as root user
alias c="clear"
alias t="tmux"
alias vi="nvim"
alias v="nvim"
alias vim="nvim"
alias e="exit"
alias mv="mv -i" #Interactive move
alias vf="vifm"
alias vif="vifm"
alias f="vifm"
alias p="~/.xprofile"
# alias python='python3.6' 
alias python='python2' 

# Define words using googler. googler must be installed for this to work
alias define='googler --noprompt -n 3 define'

# fetches 7 results from the Google US server, with preference towards results in US.
alias g='googler --noprompt  -n 8 -c us -l us'
alias googler='googler --noprompt  -n 8 -c us -l us'

# alias tor="~/.tor"
# alias tor="~/Downloads/tor-browser-linux64-9.0.4_en-US/tor-browser_en-US/start-tor-browser.desktop"
# alias ll='ls -alF'
# alias la='ls -A'
# alias l='ls -CF'
# unalias la
# unalias ls
alias la='colorls -lA --sd --gs --group-directories-first'
alias ls='colorls --group-directories-first'

# if [[ -z "$TMUX" ]]
# then
#     ID="`tmux ls | grep -vm1 attached | cut -d: -f1`"
#     if [[ -z "$ID" ]]
#     then
#         tmux new-session
#     else
#         tmux attach-session -t "$ID"
#     fi
# fi

# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
source $(dirname $(gem which colorls))/tab_complete.sh
source ~/.rc/powerlevelprompt.sh
source ~/powerlevel10k/powerlevel10k.zsh-theme

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source /home/esk/.gulp.plugin.zsh/gulp.plugin.zsh
export PATH=$HOME/.config/nvcode/utils/bin:$PATH

# For Android Studio android development
# export ANDROID_HOME=$HOME/Android/Sdk
# export PATH=$PATH:$ANDROID_HOME/platform-tools

###-tns-completion-start-###
# if [ -f /home/esk/.tnsrc ]; then
# source /home/esk/.tnsrc
# fi
###-tns-completion-end-###
