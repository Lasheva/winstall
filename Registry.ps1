# Start settings
$explorerKey = "HKCU:\SOFTWARE\Policies\Microsoft\Windows\Explorer"
Set-ItemProperty $explorerKey HideRecentlyAddedApps 1 # Disable "Recently added"

$explorerAdvancedKey = "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced"
Set-ItemProperty $explorerAdvancedKey DisabledHotkeys V # Disable "Recently added"

$exploreKey = "HKCU:\Control Panel\Mouse"
Set-ItemProperty $exploreKey MouseSpeed 0 # Disable mouse acceleration
Set-ItemProperty $exploreKey MouseThreshold1 0 # Disable mouse acceleration
Set-ItemProperty $exploreKey MouseThreshold2 0 # Disable mouse acceleration

# Configure explorer
$explorerAdvancedKey = "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced"
Set-ItemProperty $explorerAdvancedKey Hidden 1
Set-ItemProperty $explorerAdvancedKey HideFileExt 0
Set-ItemProperty $explorerAdvancedKey ShowSuperHidden 0
Set-ItemProperty $explorerAdvancedKey TaskbarSmallIcons 1 # Small taskbar
Set-ItemProperty $explorerAdvancedKey TaskbarGlomLevel 2 # Dont Combine Taskbar
Set-ItemProperty $explorerAdvancedKey MMTaskbarMode 2 # Taskbar where window is open
Set-ItemProperty $explorerAdvancedKey MMTaskbarEnabled 1 # Enable task bar on other monitors
Set-ItemProperty $explorerAdvancedKey MMTaskbarGlomLevel 2 # Dont Combine Taskbar on other monitors
Set-ItemProperty $explorerAdvancedKey ExtendedUIHoverTime 50000
Set-ItemProperty $explorerAdvancedKey LaunchTo 1 # Change Open File Explorer to This PC

$waterMarkKey = "HKCU:\Control Panel\Desktop\"
Set-ItemProperty $waterMarkKey PaintDesktopVersion 0

$sppsvcKey = "HKLM:\SYSTEM\CurrentControlSet\Services\sppsvc\"
Set-ItemProperty $sppsvcKey Start 4

$windowsDWNKey = "HKCU:\Software\Microsoft\Windows\DWM"
Set-ItemProperty $windowsDWNKey ColorPrevalence 1

$enableCustomizationKey = "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize"
Set-ItemProperty $enableCustomizationKey ColorPrevalence 1

Stop-Process -processname explorer
