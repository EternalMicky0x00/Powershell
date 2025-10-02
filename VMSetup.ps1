function VMSetup  {
    param (
        [Parameter(Mandatory=$True)]
        [String]$VM,
        [String]$VMSecurity,
        [String]$VMBios
    )
}

$VM = New-VM -Name "Win11" -MemoryStartupBytes 4GB -Generation 2  | Set-VMSecurity -VirtualizationBasedSecurityOptOut $True
$VM = New-VHD -Name "Windows11" | Set-VHD -Path C:\ProgramData\Microsoft\Windows\Virtual Hard Disks\ -PhysicalSectorSizeBytes 350
$VMBios = Set-VMBios -VMBios $bios -DisableNumLock