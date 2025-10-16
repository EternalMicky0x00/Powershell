function RunPuTTY {
    param (
        [Parameter(Mandatory=$true)]$TestCommands
    )
    Start-Process "Command, $TestCommands"
}
$TestCommands=Write-Host Run PuTTY successfully
Cmd.exe /c "putty.exe groot.underthewire.tech" $TestCommands