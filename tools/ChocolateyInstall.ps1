$name   = 'npcap'
$url = 'https://github.com/nmap/npcap/releases/download/v0.08-r4/npcap-0.08-r4.exe'
$silent = '/S'

# Now we can use the $env:chocolateyPackageParameters inside the Chocolatey package
$packageParameters = $env:chocolateyPackageParameters

if ($packageParameters) {
	$silent = $silent + ' ' + $packageParameters
}

Write-Debug "Silent arguments for the installer: $silent"

Install-ChocolateyPackage $name 'exe' $silent $url