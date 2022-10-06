# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Theme
ZSH_THEME="spaceship"
SPACESHIP_PROMPT_ADD_NEWLINE='false'
SPACESHIP_PROMPT_ASYNC='false'
source "$HOME/.oh-my-zsh/custom/themes/spaceship.zsh-theme"

# plugins
plugins=(git zsh-z)
source $ZSH/oh-my-zsh.sh
alias t=tmux

# Alias
alias lla=l
alias v=openNvim

# Brew Config (Linux)
# echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /home/USER/.profile
# eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# Nvim config
function openNvim {
  if [ $# -eq 0 ]; then
    nvim .
  else
    nvim $1
  fi
}
