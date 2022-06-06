if type -q exa
  alias ll "exa -l -g --icons"
  alias lla "ll -a"
end

echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /home/ovct/.profile
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"