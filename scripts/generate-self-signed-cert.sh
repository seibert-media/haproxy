#!/usr/bin/env bash

mkdir -p ssl
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout ssl/benjamin-borbe.key -out ssl/benjamin-borbe.crt
cat ssl/benjamin-borbe.crt ssl/benjamin-borbe.key > ssl/benjamin-borbe.pem
