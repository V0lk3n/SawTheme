# Download Theme
powershell.exe -Command "Start-BitsTransfer -Source 'https://github.com/V0lk3n/W11-SAWTheme/releases/download/Pre-Release/SawTheme.zip' -Destination 'C:\Users\$env:UserName\Desktop\SawTheme.zip'"

# Extract Theme and run installer
powershell.exe -Command "Start-Process powershell.exe -ArgumentList '-noprofile', '-exec', 'Bypass', '-Command Expand-Archive -Path C:\Users\$env:UserName\Desktop\SawTheme.zip -DestinationPath C:\Windows\Resources\Themes;C:\Windows\Resources\Themes\SawTheme\Setup\SawTheme.ps1' -Verb RunAs"
