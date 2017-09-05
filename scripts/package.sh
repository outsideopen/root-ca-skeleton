#!/bin/sh

. common.sh



get_user

mkdir -p tmp/$certfile
cp certs/$certfile.pem tmp/$certfile/$certfile.pem
cp requests/$certfile.key tmp/$certfile/$certfile.key
cp requests/$certfile.req tmp/$certfile/$certfile.req
cp cacert.pem tmp/$certfile/syberisleCA.pem
cd tmp/
tar -cvyf ../distrib/$certfile.tar.bz2 $certfile
cd ..
rm -rf tmp/