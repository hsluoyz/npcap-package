$name   = 'npcap'
$url = 'https://github.com/nmap/npcap/releases/download/v0.08-r3/npcap-0.08-r3.exe'
$silent = '/S'

Install-ChocolateyPackage $name 'exe' $silent $url