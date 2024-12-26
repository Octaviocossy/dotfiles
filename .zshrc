# Created by Zap installer
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"

export ZSH=$HOME/.oh-my-zsh

# theme
eval "$(starship init zsh)"

# tmux
alias t="tmux"
alias tl="tmux list-sessions"
alias tk="tmux kill-session"
alias tms="tmux source ~/.tmux.conf"

# LazyGit
alias lg="lazygit"

# Macchina
alias dets="macchina"

# eza alias
alias l="eza -a -l -g --icons" # Add --icons to display them
alias ls="eza -a --icons"
alias la="eza -a -l -g --icons"
alias lla="eza -a -l -g --icons"

# Nvim
alias v="nvim"

# Plugins
plug "zsh-users/zsh-syntax-highlighting"
plug "zsh-users/zsh-autosuggestions"
plug "hlissner/zsh-autopair"
plug "zap-zsh/supercharge"
plug "zap-zsh/completions"
plug "agkozak/zsh-z"

# Brew Config (Linux)
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /home/ovct/.profile
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
