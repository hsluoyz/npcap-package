$name   = 'npcap'
$url = 'https://nmap.org/npcap/dist/npcap-0.86.exe'
$silent = '/S'

Install-ChocolateyPackage $name 'exe' $silent $url -checksum 'ab677b9037dc377303e6d68a9b8a8195c8e976efd550a6bb6ce91eed551c5cbe' -checksumType 'sha256'