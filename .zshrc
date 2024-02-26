# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Created by Zap installer
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"

export ZSH=$HOME/.oh-my-zsh

# theme
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# tmux
alias t="tmux"
alias tl="tmux list-sessions"
alias tk="tmux kill-session"
alias tms="tmux source ~/.tmux.conf"

# LazyGit
alias lg="lazygit"

# LSDeluxe
alias l="lsd -la"
alias ls="lsd"
alias la="lsd -la"
alias lla="lsd -la"

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


# Load Angular CLI autocompletion.
source <(ng completion script)