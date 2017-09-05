#!/bin/sh

SCRIPTDIR=$(dirname -- "$0")
. $SCRIPTDIR/common.sh

if [ -f "private/ca.key" ]; then
    echo "ERROR: CA already exists. Not creating"
    exit 1
fi

openssl req -new -config ./openssl.conf -out requests/ca.csr -keyout private/ca.key
openssl ca -selfsign -config ./openssl.conf -in request/ca.csr -out certs/ca.crt -extensions v3_ca