$progressPreference = 'silentlyContinue'
Write-Information "Downloading WinGet and its dependencies..."
Install-PackageProvider -Name NuGet -MinimumVersion 2.8.5.201 -Force:$true -Verbose
Install-Module Microsoft.WinGet.Client -Force:$true -Confirm:$false -Verbose
Import-Module Microsoft.WinGet.Client -Verbose
Repair-WinGetPackageManager -Force:$true -Latest -Verbose

$InstallVSCode="Microsoft.VisualStudioCode"
foreach($InstallVSCode in $WSBSoftware){
    WinGet.exe install $software --silent --force --accept-source-agreements --disable-interactivity --source winget
}