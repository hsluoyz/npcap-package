$name   = 'npcap'
$url = 'https://github.com/nmap/npcap/releases/download/v0.78/npcap-0.78.exe'
$silent = '/S'

Install-ChocolateyPackage $name 'exe' $silent $url