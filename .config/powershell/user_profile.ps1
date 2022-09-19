[console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding

# PSReadLine
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None
Set-PSReadLineOption -PredictionSource History

# Alias
Set-Alias l ls
Set-Alias ll ls 
Set-Alias lla ls 

# Theme
# Invoke-Expression (&starship init powershell)
Import-Module posh-git
$omp_config = Join-Path $PSScriptRoot ".\ovct_config.omp.json"
oh-my-posh --init --shell pwsh --config $omp_config | Invoke-Expression