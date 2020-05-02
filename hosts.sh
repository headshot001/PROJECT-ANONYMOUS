#!/bin/bash
#PROJECT-ANONYMOUS COPYRIGHT MIT LICENCE (c) 2020 Ayush Chatterjee

#---MORE DOMAINS NEEDED---#

#--FUNCTION--#
#--USES 4nonimizer for auto-ip-change--#
#--PLEASE READ THE GUIDE HERE https://github.com/Hackplayers/4nonimizer.git--#

> /system/etc/hosts
printf ".com\n.net\n.org\n.in\n.mobi\n.wiki\n.us\n.co\n.biz\n.tel"> /system/etc/hosts
echo -n ":ENTER YOUR NETWORK INTERFACE "; read interface
echo
echo IF YOU DON'T KNOW YOUR CURRENT NETWORK INTERFACE THEN TYPE ifconfig and search for the interface which matches your public IP ADDRESS
while true; do
for i in {1..10}; do
ifconfig $interface 10.10.10.$i up
sleep 2;
done
done


