$name   = 'npcap'
$url = 'https://github.com/nmap/npcap/releases/download/v0.80/npcap-0.80.exe'
$silent = '/S'

Install-ChocolateyPackage $name 'exe' $silent $url -checksum '0071C698BED134C3DE3193DB692F46D5C59596BB997A12964438201F1E34D86D' -checksumType 'sha256'