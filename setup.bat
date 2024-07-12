# Download Theme
powershell.exe -Command "Start-BitsTransfer -Source https://github.com/V0lk3n/W11-SAWTheme/releases/download/Pre-Release/SawTheme.zip -Destination C:\Users\$env:UserName\Desktop\SawTheme.zip"

# Extract Theme
powershell.exe -Command "Start-Process powershell.exe -ArgumentList '-Command', 'Expand-Archive -Path \"C:\Users\$env:UserName\Desktop\SawTheme.zip\" -DestinationPath \"C:\Windows\Resources\Themes\"' -Verb RunAs"

# Run Theme Installer
powershell.exe -Command "Start-Process powershell.exe -ArgumentList '-noprofile', '-exec', 'Bypass', '-File', 'C:\Windows\Resources\Themes\SawTheme\Setup\SawTheme.ps1' -Verb RunAs"
