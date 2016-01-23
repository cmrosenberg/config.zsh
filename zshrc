# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory
unsetopt beep nomatch
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' matcher-list ''
zstyle :compinstall filename '/Users/cmr/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Import aliases shared by bash and zsh
if stat ~/.aliases &>/dev/null; then
    source $HOME/.aliases
fi

if stat ~/.secrets &>/dev/null; then
    source $HOME/.secrets
fi

export EDITOR=vim
export LC_CTYPE="en_US.UTF-8"

# Directory-related

setopt pushd_silent #Don't print the directory stack when pushing

# Jobs-related
# Print job info in long format by default (shows PID etc.)
setopt longlistjobs

# Globbing
setopt extendedglob
setopt noglobdots

# Spelling corrections and safety nets
setopt correct
setopt rm_star_wait
setopt ignoreeof


# Prompt
PROMPT="@%B%m%b %~ %Bλ%b "
