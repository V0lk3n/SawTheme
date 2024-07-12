# Download Theme
powershell.exe -Command "Start-BitsTransfer -Source http://example.com/folder.zip -Destination C:\Users\$env.UserName\Desktop\SawTheme.zip"

# Extract Theme
powershell.exe -Command "Start-Process powershell.exe -Command 'Expand-Archive C:\Users\$env.UserName\Desktop\SawTheme.zip C:\Windows\Resources\Themes' -Verb RunAs"

# Run Theme Installer
powershell.exe -Command "Start-Process powershell.exe -ArgumentList '-noprofile', '-exec', 'Bypass', '-File', 'C:\Windows\Resources\Themes\SawTheme\Setup\SawTheme.ps1' -Verb RunAs"