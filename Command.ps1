Get-ExecutionPolicy

powershell -ExecutionPolicy Bypass -File "C:\Path\To\Script.ps1"

powershdll powershell -ep bypass

Add-ADGroupMember -Identity "GroupName" -Members "UserName"

$credential = Get-Credential

Set-ExecutionPolicy Unrestricted -Scope CurrentUser

Start-Process powershell.exe -Credential (Get-Credential)

psexec -i -s powershell.exe

Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('Hello, World!', 'Popup Message')
