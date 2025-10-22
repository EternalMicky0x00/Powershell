<#Just some basic network commands#>
ping "Autismesanslimites.org"
<#---------------------------#>
$Listener=New-Object System.Net.Sockets.TcpListener(8080); $Listener.Start(); Write-Host 'Listening...'
<#----------------------------------------------------------------------------------------------------------------------------#>
$LogFile="Connection.txt"
Add-Content$LogFile("Connection from" + $ClieNT.Client.RemoteEndPoint.ToString())
<#---------------------------------------------------------------------------------------------------------------------------------#>
Get-WmiObject -Class Win32_Share | Select-Object Name, Path, Description
<#----------------------------------------------------------------------------------------------------------------#>
Get-SmbShare
<#---------------------------------------------#>
$sFTPSession=New-Object WinSCP.SessionOptions -Property @{
    Protocol=""
    HostName=""
    UserName=""
    Password=""
    SshHostKey=""
}
$Session=New-Object WinSCP.Session
$Session.Open($sFTPSession)
$TransferOptions=New-Object WinSCP.TransferOptions
$TransferOptions.TransferMode=[WinScp.TransferMode]::Binary
$Session.PutFiles("C:\local\path\to\file.txt", "/remote/path/to/").Check()
$Session.Dispose()
<#----------------------------------------------------------------------------------------#>