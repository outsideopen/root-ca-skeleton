#!/bin/sh

. common.sh

get_user

openssl ca -out certs/$certfile.pem -config ./openssl.cnf -infiles requests/$certfile.req