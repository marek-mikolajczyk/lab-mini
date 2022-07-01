#!/bin/bash

openssl x509 -req \
  -days 365 \
  -in ../server/"$1".marekexample.com/"$1".marekexample.com.csr \
  -CA ../CA/ca-marekexample.crt \
  -CAkey ../CA/ca-marekexample.key \
  -CAcreateserial \
  -extensions req_ext \
  -extfile ../server/"$1".marekexample.com/"$1".marekexample.com.cnf \
  -out ../server/"$1".marekexample.com/"$1".marekexample.com.crt
