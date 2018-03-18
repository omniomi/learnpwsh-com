################
# Custom Prompt
################

# Changes PowerShell prompt to current folder only (shorter prompt) in lowercase.
function prompt {
    "$((Get-Location | Split-Path -leaf).ToLower())> "
}

################
# Aliases
################

Set-Alias ll Get-ChildItem

################
# Functions
################

function touch ([string]$Name) {
    New-Item $Name -ItemType file
}