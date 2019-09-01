$loc = Get-ChildItem HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall
$names = $loc | foreach-object {Get-ItemProperty $_.PsPath}
foreach ($name in $names)
{
    If(-Not [string]::IsNullOrEmpty($name.DisplayName)) {      
        $line = $name.DisplayName + ',' + $name.DisplayVersion + ',' + $name.InstallDate
        Write-Host $line   
    }
}

$loc = Get-ChildItem HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall
$names = $loc | foreach-object {Get-ItemProperty $_.PsPath}
foreach ($name in $names)
{
    If(-Not [string]::IsNullOrEmpty($name.DisplayName)) {      
        $line = $name.DisplayName + ','+$name.DisplayVersion + ','+$name.InstallDate
        Write-Host $line
    }
}