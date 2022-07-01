#!/bin/bash

openssl x509 -req \
  -days 365 \
  -in ../server/"$1".marekexample.com/"$1".marekexample.com.csr \
  -CA /root/CA/ca-marekexample.crt \
  -CAkey /root/CA/ca-marekexample.key \
  -CAcreateserial \
	-CAserial /root/CA/ca-marekexample.srl \
  -extensions req_ext \
  -extfile ../server/"$1".marekexample.com/"$1".marekexample.com.cnf \
  -out ../server/"$1".marekexample.com/"$1".marekexample.com.crt
