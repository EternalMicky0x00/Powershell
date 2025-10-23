$bytes=[byte[]](72, 101, 108, 108, 111, 32, 87, 111, 114, 108, 100)
$outputFile = "C:\Users\Micky\Documents\Bytes.bin"
[System.IO.File]::WriteAllBytes($outputFile, $bytes)
Write-Host "[+] $outputFile"