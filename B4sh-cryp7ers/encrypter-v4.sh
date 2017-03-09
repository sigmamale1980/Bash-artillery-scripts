#!/bin/bash
		for n in {1..3} 
	do
	timed=$(( ($RANDOM % 10) + 1))
done
	index=0;
		for n in {1..$timed}
	do
	sed=$RANDOM$RANDOM$RANDOM$RANDOM$RANDOM$RANDOM 
	str=$RANDOM$RANDOM$sed$RANDOM$RANDOM$RANDOM >> seed.s
	base64 -i seed.s >> seed.e
	rm seed.s
	seed=$(cat seed.e)
	stre=$seed
	for i in {0..9}; do arr[index]=$i; index=`expr ${index} + 1`; done
	for i in {a..z}; do arr[index]=$i; index=`expr ${index} + 1`; done
	for i in {A..Z}; do arr[index]=$i; index=`expr ${index} + 1`; done
	for i in {a..z}; do arr[index]=$i; index=`expr ${index} + 1`; done
	for i in {A..Z}; do arr[index]=$i; index=`expr ${index} + 1`; done
	for i in {0..96}; do stre="$stre${arr[$RANDOM%index]}"; done
done
			for n in {1..3}
	do
	timer=$(( ($RANDOM % 10) + 1))
done
		for n in {1..$timer}
	do
	seeder=$RANDOM$RANDOM$RANDOM$RANDOM$RANDOM$RANDOM
	string=$RANDOM$RANDOM$seeder$RANDOM$RANDOM$RANDOM >> seeder.s
	base64 -i seeder.s >> seeder.e
	rm seeder.s
	seeders=$(cat seeder.e)
	stringer=$seeders
	for i in {0..9}; do arr[index]=$i; index=`expr ${index} + 1`; done
	for i in {a..z}; do arr[index]=$i; index=`expr ${index} + 1`; done
	for i in {A..Z}; do arr[index]=$i; index=`expr ${index} + 1`; done
	for i in {a..z}; do arr[index]=$i; index=`expr ${index} + 1`; done
	for i in {A..Z}; do arr[index]=$i; index=`expr ${index} + 1`; done
	for i in {0..96}; do stringer="$stringer${arr[$RANDOM%index]}"; done
done
			for n in {1..3}
	do
	timem=$(( ($RANDOM % 10) + 1))
done
		for n in {1..$timem}
	do
	salt=$RANDOM$RANDOM$RANDOM$RANDOM$RANDOM$RANDOM$RANDOM$RANDOM
	for i in {0..9}; do arr[index]=$i; index=`expr ${index} + 1`; done
	for i in {a..z}; do arr[index]=$i; index=`expr ${index} + 1`; done
	for i in {A..Z}; do arr[index]=$i; index=`expr ${index} + 1`; done
	for i in {a..z}; do arr[index]=$i; index=`expr ${index} + 1`; done
	for i in {A..Z}; do arr[index]=$i; index=`expr ${index} + 1`; done
	for i in {0..96}; do salt="$salt${arr[$RANDOM%index]}"; done
done
			for n in {1..3}
	do
	timeb=$(( ($RANDOM % 10) + 1))
done	
    	for n in {1..$timeb}
	do
	sals=$RANDOM$RANDOM$RANDOM$RANDOM$RANDOM$RANDOM$RANDOM$RANDOM
	for i in {0..9}; do arr[index]=$i; index=`expr ${index} + 1`; done
	for i in {a..z}; do arr[index]=$i; index=`expr ${index} + 1`; done
	for i in {A..Z}; do arr[index]=$i; index=`expr ${index} + 1`; done
	for i in {a..z}; do arr[index]=$i; index=`expr ${index} + 1`; done
	for i in {A..Z}; do arr[index]=$i; index=`expr ${index} + 1`; done
	for i in {0..96}; do sals="$sals${arr[$RANDOM%index]}"; done
done
	key=$stre
	iv=$stringer
	keyring=$(uuidgen)
	keyd=$(openssl genrsa 192)
	keys=$(openssl genrsa 192)
	echo "================================================================================">> encrypter.conf;
	echo "keyring: " $keyring >> encrypter.conf;
	echo "seed: " $sed >> encrypter.conf;
	echo "key: " $stre >> encrypter.conf;
	echo "salt: " $salt >> encrypter.conf;
	echo "mnemonic TB: " $timer "secs" >> encrypter.conf;
	echo "RSA key: " $keyd >> encrypter.conf;
	echo "--------------------------------------------------------------------------------" >> encrypter.conf;
	echo "keyring: " $keyring >> encrypter.conf;
	echo "seed:" $seeder >> encrypter.conf;
	echo "iv: "  $stringer >> encrypter.conf; 
	echo "salt: " $sals >> encrypter.conf; 
	echo "mnemonic TB: " $timem "secs" >> encrypter.conf; 
	echo "RSA key: " $keys >> encrypter.conf
	echo "================================================================================">> encrypter.conf;
	echo -e $salt$salt$salt$key$salt$iv$salt$keyd$salt$salt$salt > $keyring.pub.key
	base64 -i $keyring.pub.key >> $keyring.pub.keyd
	enkey=$(cat $keyring.pub.keyd|tr 'ABCDEFGHIJKLMNOPQRSTUVWXYZ' '1234567890!@#$%^&*(){}|\,.?'|tr 'abcdefghijklmopqrstuvwxyz' '1234567890|;,.!@#$%^&*()_+:<>?')
	echo -e "_________BEGIN PUBLIC KEY________" "\n" $enkey  "\n" "________END PUBLIC KEY________" > $keyring.pub.pem 
	echo -e $sals$sals$sals$key$salt$iv$sals$keys$sals$sals$sals > $keyring.priv.key
	base64 -i $keyring.priv.key >> $keyring.priv.keyd
	encode=$(cat $keyring.priv.keyd|tr 'ABCDEFGHIJKLMNOPQRSTUVWXYZ' '1234567890!@#$%^&*(){}|\,.?'|tr 'abcdefghijklmopqrstuvwxyz' '1234567890|;,.!@#$%^&*()_+:<>?')
	echo -e "_________BEGIN PRIVATE KEY________" "\n" $encode "\n" "________END PRIVATE KEY________" > $keyring.priv.pem 
				for n in {1..3}
	do
	timeh=$(( ($RANDOM % 10) + 1))
done
		for n in {1..$timeh}
	do
	openssl enc -base64 -in $keyring.pub.pem -in $keyring.priv.pem -k $key -iv $iv -out $seed.csr
	base64 -i $seed.csr >> $seed.crlf
	crypt=$(cat $seed.crlf)
	echo  -e $crypt  >> $keyring.crt 
	openssl enc -base64 -in $keyring.pub.pem -in $keyring.priv.pem -in $keyring.crt -k $key -iv $iv -out $keyring.csr
	base64 -i $keyring.csr >> $keyring.crlf
	crypto=$(cat $keyring.crlf)	
	rm $keyring.crt
	echo  -e $crypto > $keyring.crt
	openssl enc -base64 -in $seed.crlf -in $keyring.crlf  -in $seed.csr -in $keyring.csr -in $keyring.crt -in $keyring.pub.key -in $keyring.priv.key -in $keyring.pub.keyd -in $keyring.priv.keyd -k $key -iv $iv -out $keyring.csv
	base64 -i $keyring.csv >> $keyring.cst
	cert=$(cat $keyring.cst|tr 'ABCDEFGHIJKLMNOPQRSTUVWXYZ' '1234567890!@#$%^&*(){}|\,.?'|tr 'abcdefghijklmopqrstuvwxyz' '0987654321|;-+=[]/~()_+:<>?')
	echo  -e "________BEGIN CERTIFICATE________" "\n" $cert "\n" "________END CERTIFICATE________" > $keyring.crt
done
	rm $keyring.csv
	rm $keyring.pub.keyd
	rm $keyring.priv.keyd
	rm $keyring.pub.key
	rm $keyring.priv.key
	rm $seed.crlf
	rm $keyring.crlf
	rm $seed.csr
	rm $keyring.csr
	rm $keyring.cst
	rm *.e
cat *conf


