# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

# Theme
ZSH_THEME="spaceship"
SPACESHIP_PROMPT_ADD_NEWLINE='false'
source "$HOME/.oh-my-zsh/custom/themes/spaceship.zsh-theme"

# plugins
plugins=(git zsh-z)

# Alias
alias lla=l
alias v=nvim
alias g=git

# Brew Config (Linux)
# echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /home/USER/.profile
# eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"