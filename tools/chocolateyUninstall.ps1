$ErrorActionPreference = 'Stop';	# stop on all errors
$packageName = 'Npcap'
$softwareName = 'Npcap*'			#part or all of the Display Name as you see it in Programs and Features. It should be enough to be unique
$installerType = 'EXE' 
$silentArgs = '/S'					# NSIS
$validExitCodes = @(0)
$uninstalled = $false
[array]$key = Get-UninstallRegistryKey -SoftwareName $softwareName

if ($key.Count -eq 1) {
  $key | % { 
    $file = "$($_.UninstallString)"

    Uninstall-ChocolateyPackage -PackageName $packageName `
                                -FileType $installerType `
                                -SilentArgs "$silentArgs" `
                                -ValidExitCodes $validExitCodes `
                                -File "C:\Program Files\Npcap\uninstall.exe"
  }
} elseif ($key.Count -eq 0) {
  Write-Warning "$packageName has already been uninstalled by other means."
} elseif ($key.Count -gt 1) {
  Write-Warning "$key.Count matches found!"
  Write-Warning "To prevent accidental data loss, no programs will be uninstalled."
  Write-Warning "Please alert package maintainer the following keys were matched:"
  $key | % {Write-Warning "- $_.DisplayName"}
}

