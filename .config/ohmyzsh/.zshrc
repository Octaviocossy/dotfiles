#!/bin/sh
[ -f "$HOME/.local/share/zap/zap.zsh" ] && source "$HOME/.local/share/zap/zap.zsh"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Theme
ZSH_THEME="robbyrussell"

source $ZSH/oh-my-zsh.sh

# Alias
alias lla="ls -la"
alias v=openNvim
alias t="tmux"
alias tl="tmux list-sessions"
alias tk="tmux kill-session"

function openNvim {
  if [ $# -eq 0 ]; then
    nvim .
  else
    nvim $1
  fi
}

# Plugins
# plug "zsh-users/zsh-syntax-highlighting"
plug "zsh-users/zsh-autosuggestions"
plug "hlissner/zsh-autopair"
plug "zap-zsh/completions"
plug "agkozak/zsh-z"
plug "zap-zsh/supercharge"

# Brew Config (Linux)
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /home/ovct/.profile
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
