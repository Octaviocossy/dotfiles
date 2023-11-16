# Created by Zap installer
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"

export ZSH=$HOME/.oh-my-zsh

# theme
ZSH_THEME="robbyrussell"

source $ZSH/oh-my-zsh.sh

# tmux
alias t="tmux"
alias tl="tmux list-sessions"
alias tk="tmux kill-session"
alias tms="tmux source ~/.tmux.conf"

# LazyGit
alias lg="lazygit"

# ls alias
alias ls="exa --icons"
alias la="exa -la --icons"
alias ll="exa -ll --icons"
alias lla="exa -la --icons"
alias tree="exa --tree --level=3 --long"

# Nvim
alias v=openNvim
function openNvim {
  if [ $# -eq 0 ]; then
    nvim .
  else
    nvim $1
  fi
}

# Plugins
plug "zsh-users/zsh-syntax-highlighting"
plug "zsh-users/zsh-autosuggestions"
plug "hlissner/zsh-autopair"
plug "zap-zsh/completions"
plug "agkozak/zsh-z"
plug "zap-zsh/supercharge"

# Brew Config (Linux)
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /home/ovct/.profile
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
