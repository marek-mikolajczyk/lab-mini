# DIR FOR CERTS

New-Item -Path "c:\" -Name "SSL" -ItemType "directory" -ErrorAction SilentlyContinue


# DOMAIN CA
Invoke-WebRequest http://devops.marekexample.com:5999/CA/ca-marekexample.crt -OutFile c:\SSL\ca-marekexample.crt
$file=(Get-ChildItem -Path "C:\SSL\ca-marekexample.crt") 
$file | Import-Certificate -CertStoreLocation cert:\LocalMachine\Root


# SERVER KEY AND CRT

Invoke-WebRequest http://devops.marekexample.com:5999/certificates/server/win1.marekexample.com/win1.marekexample.com.crt -OutFile c:\SSL\win1.marekexample.com.crt
$file=(Get-ChildItem -Path "c:\SSL\win1.marekexample.com.crt")
