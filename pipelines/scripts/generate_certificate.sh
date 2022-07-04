#!/bin/bash

docker exec ca-marekexample-ca-marekexample-1  generate_server.sh $1
docker exec ca-marekexample-ca-marekexample-1  sign_server.sh $1
