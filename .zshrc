# Path to your dotfiles.
export DOTFILES=$HOME/.dotfiles

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"


ZSH_CUSTOM=$DOTFILES

# Theme settings

ZSH_THEME="powerlevel10k/powerlevel10k"
POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL10K_MODE='nerdfont-complete'


ZSH_DISABLE_COMPFIX=true
# ZSH Plugins
export NVM_LAZY_LOAD=true
export NVM_COMPLETION=true
plugins=(git ssh-agent zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh




if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

############## User Configs #################

# if [[ "$(uname)" == "Darwin" ]]; then
#     # Do something under Mac OS X platform
#     HISTFILE="/Users/matt/Dropbox/Symlinks/.zshconfig/.zsh_history"
# # elif [ "$(expr substr $(uname -ss) 1 5)" == "Linux" ]; then
#     # Do something under GNU/Linux platform
# #     HISTFILE="/mnt/c/Users/MattR/Dropbox/Symlinks/.zshconfig/.zsh_history"
# # elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW32_NT" ]; then
# #     # Do something under 32 bits Windows NT platform
# #     HISTFILE="/mnt/c/Users/MattR/Dropbox/Symlinks/.zshconfig/.zsh_history"
# # elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW64_NT" ]; then
#   else
#     # Do something under 64 bits Windows NT platform
#     HISTFILE="/mnt/c/Users/MattR/Dropbox/Symlinks/.zshconfig/.zsh_history"
# fi
HISTFILE=$HOME/.zsh_history

# HISTFILE="/mnt/c/Users/Matt/Dropbox/Symlinks/.zshconfig/.zsh_history"

HISTSIZE=500000
SAVEHIST=500000
setopt APPENDHISTORY
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
HIST_STAMPS="%d/%m/%y %T"

DISABLE_AUTO_UPDATE="true"



if [ -r $ZDOTDIR ]; then

fi

# source ~/.zsh_functions
# source ~/.zprofile
# source ~/.p10k.zsh
# SET ENV VARS

#export WINUSER="$(wslvar USERNAME)"



export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH=$PATH:/usr/sbin

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

export GPG_TTY=$(tty)
gpgconf --launch gpg-agent


[[ "$TERM_PROGRAM" == "vscode" ]] && . "$(code --locate-shell-integration-path zsh)"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

POWERLEVEL9K_DISABLE_CONFIGURATION_WIZARD=true


export GOPATH=$HOME/go
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"
