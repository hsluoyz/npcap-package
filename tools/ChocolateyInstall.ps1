$name   = 'npcap'
$url = 'https://github.com/nmap/npcap/releases/download/v0.10-r18/npcap-0.10-r18.exe'
$silent = '/S'

Install-ChocolateyPackage $name 'exe' $silent $url