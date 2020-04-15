#!/bin/bash
#PROJECT-ANONYMOUS COPYRIGHT MIT LICENCE (c) 2020 Ayush Chatterjee

#---MORE DOMAINS NEEDED---#

#--FUNCTION--#
#--USES 4nonimizer for auto-ip-change--#
#--PLEASE READ THE GUIDE HERE https://github.com/Hackplayers/4nonimizer.git--#

> /system/etc/hosts
printf ".com\n.net\n.org\n.in\n.mobi\n.wiki\n.us\n.co\n.biz\n.tel"> /system/etc/hosts
rm -rf $HOME/4nonimizer
git clone https://github.com/Hackplayers/4nonimizer.git
cd $HOME/4nonimizer
4nonimizer start
while true; do
4nonimizer change_ip
4nonimizer restart
sleep 60;
done
