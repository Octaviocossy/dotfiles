set fish_greeting ""

set -gx TERM xterm-256color

# theme
set -g theme_color_scheme terminal-dark
set -g fish_prompt_pwd_dir_length 1
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g theme_hostname always

# aliases
alias ls "ls -p -G"
alias ll "exa -l -g --icons"
alias lla "ll -a"
alias c "code ."
alias tree "exa --tree --level=3 --long"

set LOCAL_CONFIG (dirname (status --current-filename))/config-local.fish
if test -f $LOCAL_CONFIG
  source $LOCAL_CONFIG
end

switch (uname)
  case Linux
    source (dirname (status --current-filename))/config-linux.fish
end