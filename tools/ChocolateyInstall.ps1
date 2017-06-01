$name   = 'npcap'
$url = 'https://nmap.org/npcap/dist/npcap-0.90.exe'
$silent = '/S'

Install-ChocolateyPackage $name 'exe' $silent $url -checksum '0477a42a9c54f31a7799fb3ee0537826041730f462abfc066fe36d81c50721a7' -checksumType 'sha256'