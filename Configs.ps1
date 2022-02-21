# Download Configs from my dotfiles repo

# Powershell Profile
mkdir "$env:USERPROFILE\Documents\WindowsPowerShell\"
$powershellConfigUrl = "https://raw.githubusercontent.com/IrishBruse/dotfiles/main/.config/powershell/Microsoft.PowerShell_profile.ps1"
$powershellConfig = "$env:USERPROFILE\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1"

Invoke-WebRequest -Uri $powershellConfigUrl -OutFile $powershellConfig

# Alacritty Config
mkdir "$env:USERPROFILE\AppData\Local\alacritty\"
$alacrittyUrl = "https://raw.githubusercontent.com/IrishBruse/dotfiles/main/.alacritty.yml"
$alacritty = "$env:USERPROFILE\AppData\Local\alacritty\alacritty.yml"

Invoke-WebRequest -Uri $alacrittyUrl -OutFile $alacritty
