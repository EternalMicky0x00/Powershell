$CmdExec="dir C:\Users\"
$AscIIBytes=[System.Text.Encoding]::ASCII.GetBytes($CmdExec)
Write-Host "ASCII Bytes: $($asciiBytes -join ', ')"
$decodedCommand = [System.Text.Encoding]::ASCII.GetString($ascIIBytes)
Invoke-Expression $decodedCommand