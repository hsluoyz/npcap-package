$name   = 'npcap'
$url = 'https://nmap.org/npcap/dist/npcap-0.83.exe'
$silent = '/S'

Install-ChocolateyPackage $name 'exe' $silent $url -checksum 'ad7ec0eea55e2dfb062580decde032a2584c106b2e4fd84782e81304a380d64a' -checksumType 'sha256'