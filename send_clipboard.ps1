Add-Type -AssemblyName System.Windows.Forms
$txt = [Windows.Forms.Clipboard]::GetText()
$path = "$env:USERPROFILE\iCloudDrive\iClipboard\from_windows.txt"
Set-Content -Path $path -Value $txt -Encoding UTF8