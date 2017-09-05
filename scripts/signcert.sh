#!/bin/sh

SCRIPTDIR=$(dirname -- "$0")
. $SCRIPTDIR/common.sh

get_cert_name

openssl ca -out certs/$certfile.pem -config ./openssl.cnf -infiles requests/$certfile.req