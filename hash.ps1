Get-ChildItem -path C:\Users\Angeline\Desktop | Get-FileHash
Get-ChildItem -path C:\Users\Angeline\Desktop | ls | Get-FileHash
$dir | where { $_.PsIsContainer -eq $false }