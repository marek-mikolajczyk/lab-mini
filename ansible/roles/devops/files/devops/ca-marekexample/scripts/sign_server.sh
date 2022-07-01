#!/bin/bash

WEB_DIR=/var/www/localhost/htdocs/certificates

openssl x509 -req \
  -days 365 \
  -in $WEB_DIR/server/"$1".marekexample.com/"$1".marekexample.com.csr \
  -CA /root/CA/ca-marekexample.crt \
  -CAkey /root/CA/ca-marekexample.key \
  -CAcreateserial \
	-CAserial /root/CA/ca-marekexample.srl \
  -extensions req_ext \
  -extfile $WEB_DIR/server/"$1".marekexample.com/"$1".marekexample.com.cnf \
  -out $WEB_DIR/server/"$1".marekexample.com/"$1".marekexample.com.crt
