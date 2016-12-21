$name   = 'npcap'
$url = 'https://github.com/nmap/npcap/releases/download/v0.78/npcap-0.78.exe'
$silent = '/S'

Install-ChocolateyPackage $name 'exe' $silent $url -checksum '0D03DA9029C22C1E80A2420C2BD0F6F388FB7CFA4518168D8C41F6D8D002ECDC' -checksumType 'sha256'