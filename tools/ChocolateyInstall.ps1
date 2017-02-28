$name   = 'npcap'
$url = 'https://nmap.org/npcap/dist/npcap-0.82.exe'
$silent = '/S'

Install-ChocolateyPackage $name 'exe' $silent $url -checksum '6401EC91B9A09D3295D329CA01A68872F71E749842BA1AF8D35DD933F2840EF5' -checksumType 'sha256'