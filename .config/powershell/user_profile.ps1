[console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding

# Alias
Set-Alias l ls
Set-Alias ll ls 
Set-Alias lla ls 
Set-Alias v nvim

Import-Module posh-git
$omp_config = Join-Path $PSScriptRoot ".\ovct_config.omp.json"
oh-my-posh --init --shell pwsh --config $omp_config | Invoke-Expression
