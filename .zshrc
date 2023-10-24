# Created by Zap installer
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"

# Theme config
SPACESHIP_ASYNC_SHOW=false
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_GIT_ASYNC=false

# tmux
alias t="tmux"
alias tl="tmux list-sessions"
alias tk="tmux kill-session"
alias tms="tmux source ~/.tmux.conf"

# exa
alias ls="exa --icons"
alias la="exa -la --icons"
alias ll="exa -ll --icons"
alias lla="exa -la --icons"

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

# Load and initialise completion system
autoload -Uz compinit
compinit

source /home/linuxbrew/.linuxbrew/opt/spaceship/spaceship.zsh
