#!/bin/bash

# script accepts $1 as CN/servername

mkdir -p ../server/"$1".marekexample.com/
openssl genrsa -out ../server/"$1".marekexample.com/"$1".marekexample.com.key 2048



cat <<  EOF > ../server/"$1".marekexample.com/"$1".marekexample.com.cnf
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
DNS.1 = alt1.marekexample.com

EOF

openssl req -new -key ../server/"$1".marekexample.com/"$1".marekexample.com.key \
  -out ../server/"$1".marekexample.com/"$1".marekexample.com.csr \
  -config ../server/"$1".marekexample.com/"$1".marekexample.com.cnf
