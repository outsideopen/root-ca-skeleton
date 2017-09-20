#!/bin/sh

SCRIPTDIR=$(dirname -- "$0")
. $SCRIPTDIR/common.sh

if [ ! -f "private/root.pem" ]; then
    echo "ERROR: missing CA Key"
    echo "==== Please create using the following command"
    echo ""
    echo "openssl ecparam -name secp384r1 -genkey | openssl ec -aes-256-cbc -out private/root.pem"
    echo ""
    exit 1
fi

chmod 444 private/root.pem

openssl req -new -config ./openssl.conf -key private/root.pem \
            -out certs/root.pem -extensions ext_root -x509 -days 7300