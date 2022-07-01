#!/bin/bash

cd /var/www/localhost/htdocs/files-marekexample/CA
openssl genrsa -out ca-marekexample.key 2048
openssl req -new -x509 -days 3652 -key ca-marekexample.key -subj "/C=PL/ST=SL/L=KCE/O=MAREKEXAMPLE/CN=Root CA MAREKEXAMPLE" -out ca-marekexample.crt
