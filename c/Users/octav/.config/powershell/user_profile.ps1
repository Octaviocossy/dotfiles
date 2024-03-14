[console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding

function get_default_flags {
    & eza -a -l -g
}

# Alias
Set-Alias -Name l -Value get_default_flags
Set-Alias ls l
Set-Alias la ls
Set-Alias lla la
Set-Alias lg lazygit

# Icons
Import-Module -Name Terminal-Icons

# Theme
Invoke-Expression (&starship init powershell)