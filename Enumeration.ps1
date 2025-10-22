$EnumOsInfo=Get-CimInstance -ClassName Win32_OperatingSystem
$OSType=[Microsoft.PowerShell.Commands.OSType]$EnumOsInfo.OSType
Write-Host "Os Type: $($EnumOsInfo)"