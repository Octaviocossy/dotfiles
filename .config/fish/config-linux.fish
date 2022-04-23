if type -q exa
  alias ll "exa -l -g --icons"
  alias lla "ll -a"
end

eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)
echo 'eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)' \
  >> ~/.config/fish/config.fisheval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)