#!/bin/bash

# script accepts $1 as $WEB_DIR/servername and $2 as SAN

WEB_DIR=/var/www/localhost/htdocs/certificates
mkdir -p $WEB_DIR/server/"$1".marekexample.com/
openssl genrsa -out $WEB_DIR/server/"$1".marekexample.com/"$1".marekexample.com.key 2048


if [ -v 2 ]; then
  SAN=$2
else
  SAN=$1
fi

cat <<  EOF > $WEB_DIR/server/"$1".marekexample.com/"$1".marekexample.com.cnf
[req]
distinguished_name = req_distinguished_name
req_extensions = req_ext
prompt = no

[req_distinguished_name]
C   = PL
ST  = SL
L   = KCE
O   = MAREKEXAMPLE
OU  = IT
CN  = $1.marekexample.com

[req_ext]
subjectAltName = @alt_names

[alt_names]
DNS.1 = $SAN.marekexample.com
EOF


#[ -v 2 ] && echo "DNS.1 = $2.marekexample.com" >> $WEB_DIR/server/"$1".marekexample.com/"$1".marekexample.com.cnf \
#[ -v 2 ] && echo "DNS.1 = $2.marekexample.com" >> $WEB_DIR/server/"$1".marekexample.com/"$1".marekexample.com.cnf \

openssl req -new -key $WEB_DIR/server/"$1".marekexample.com/"$1".marekexample.com.key \
  -out $WEB_DIR/server/"$1".marekexample.com/"$1".marekexample.com.csr \
  -config $WEB_DIR/server/"$1".marekexample.com/"$1".marekexample.com.cnf

chmod 644 $WEB_DIR/server/"$1".marekexample.com/"$1".marekexample.com.key
