#!/bin/sh

SCRIPTDIR=$(dirname -- "$0")
. $SCRIPTDIR/common.sh



get_cert_name

mkdir -p tmp/$certfile
cp certs/$certfile.pem tmp/$certfile/$certfile.pem
cp requests/$certfile.key tmp/$certfile/$certfile.key
cp requests/$certfile.req tmp/$certfile/$certfile.req
cp cacert.pem tmp/$certfile/syberisleCA.pem
cd tmp/
tar -cvyf ../distrib/$certfile.tar.bz2 $certfile
cd ..
rm -rf tmp/