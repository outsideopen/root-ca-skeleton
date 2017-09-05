#!/bin/sh

. common.sh

get_user

openssl req -new -nodes -keyout requests/$certfile.key -out requests/$certfile.req -config ./openssl.cnf
openssl ca -out certs/$certfile.pem -config ./openssl.cnf -infiles requests/$certfile.req