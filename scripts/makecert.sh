#!/bin/sh

SCRIPTDIR=$(dirname -- "$0")
. $SCRIPTDIR/common.sh

get_cert_name

openssl req -new -nodes -keyout requests/$certfile.key -out requests/$certfile.req -config ./openssl.cnf