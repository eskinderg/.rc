# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# export TERM=screen-256color-bce
export TERM=xterm-256color

DEFAULT_USER=$USER

# Path to your oh-my-zsh installation.
export ZSH=/home/esk/.oh-my-zsh

# ZSH_THEME="robbyrussell"
# ZSH_THEME="spaceship"
# ZSH_THEME="amuse"
# ZSH_THEME="agnoster"
# ZSH_THEME="powerlevel9k/powerlevel9k"
# ZSH_THEME=powerlevel10k/powerlevel10k

typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet
typeset -g POWERLEVEL9K_INSTANT_PROMPT=off
# POWERLEVEL9K_MODE='awesome-patched'
POWERLEVEL9K_MODE='awesome-fontconfig'
# POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true # new line

# POWERLEVEL9K_SHORTEN_DIR_LENGTH=2 # Sorten directory path

# POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="↱"
# POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="↳ "
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon root_indicator context dir background_jobs status vcs dir_writable)

POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=( vi_mode)

POWERLEVEL9K_STATUS_OK=false
# POWERLEVEL9K_HOME_ICON=' '
POWERLEVEL9K_HOME_SUB_ICON=' '
# POWERLEVEL9K_FOLDER_ICON=' '
POWERLEVEL9K_ETC_ICON=' '
POWERLEVEL9K_LINUX_ICON='\uf300'

## POWERLEVEL9K SETTINGS ##
POWERLEVEL9K_STATUS_VERBOSE=false
POWERLEVEL9K_STATUS_OK_IN_NON_VERBOSE=true
# POWERLEVEL9K_PROMPT_ON_NEWLINE=true
# POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=''
# POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%K{black}%F{black} `zsh_weather` %f%k%F{black}%f "
# POWERLEVEL9K_CUSTOM_HELLO_WORLD="zsh_hello_world"
# POWERLEVEL9K_CUSTOM_INTERNET_SIGNAL="zsh_internet_signal"
# POWERLEVEL9K_CUSTOM_IP="zsh_custom_ip"
# POWERLEVEL9K_CUSTOM_IP_BACKGROUND="black"
# POWERLEVEL9K_CUSTOM_INTERNET_SIGNAL_BACKGROUND="black"
# POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(custom_internet_signal  dir dir_writable vcs)
# POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(custom_ip disk_usage status)
# POWERLEVEL9K_TIME_FORMAT="%D{\uf073 %d.%m.%y}"

POWERLEVEL9K_VI_MODE_INSERT_FOREGROUND='white'
POWERLEVEL9K_VI_MODE_INSERT_BACKGROUND='black'
POWERLEVEL9K_VI_MODE_NORMAL_FOREGROUND='white'
POWERLEVEL9K_VI_MODE_NORMAL_BACKGROUND='green'

POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_FOREGROUND="red"
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_BACKGROUND="black"

POWERLEVEL9K_DIR_HOME_BACKGROUND="green"
POWERLEVEL9K_DIR_HOME_FOREGROUND="white"

POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="blue"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="white"

POWERLEVEL9K_DIR_DEFAULT_BACKGROUND="black"
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="white"

POWERLEVEL9K_VCS_CLEAN_BACKGROUND="green"
POWERLEVEL9K_VCS_CLEAN_FOREGROUND="white"

#default hooks for git
# POWERLEVEL9K_VCS_GIT_HOOKS=(vcs-detect-changes git-untracked git-aheadbehind git-stash git-remotebranch git-tagname)

POWERLEVEL9K_VCS_GIT_HOOKS=(vcs-detect-changes git-aheadbehind git-remotebranch git-tagname)

POWERLEVEL9K_VCS_MODIFIED_BACKGROUND="black"
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND="black"
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND="yellow"
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND="yellow"
# POWERLEVEL9K_SHOW_CHANGESET=true # hash number
POWERLEVEL9K_VCS_SHOW_SUBMODULE_DIRTY=false


POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
##


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
# HIST_STAMPS="mm/dd/yyyy"

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

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

export NVM_DIR="/home/esk/.nvm" #Nodejs version manager
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

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
# alias ls='colorls --group-directories-first'

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
source ~/powerlevel10k/powerlevel10k.zsh-theme

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source /home/esk/.gulp.plugin.zsh/gulp.plugin.zsh
export PATH=$HOME/.config/nvcode/utils/bin:$PATH
source /home/esk/.gulp.plugin.zsh/gulp.plugin.zsh
