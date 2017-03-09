#!/bin/bash
banner=$(echo "DB Hunter");
echo $banner
echo "How many host to scan: "
read host
echo "Output File: "
read output
nmap -v -A -iR $host -Pn -p 3306 -oG $output --append-output -O
nmap -v -A -iR $host -Pn -p 5432 -oG $output --append-output -O
nmap -v -A -iR $host -Pn -p 523 -oG $output --append-output -O 
nmap -v -A -iR $host -Pn -p 1433 -oG $output --append-output -O
