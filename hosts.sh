#!bin/bash
#PROJECT-ANONYMOUS COPYRIGHT MIT LICENCE (c) 2020 Ayush Chatterjee

#---MORE DOMAINS NEEDED---#


#--AUTO UPDATE HOSTS--#
cd $HOME/PROJECT-ANONYMOUS
rm hosts.sh
git clone https://github.com/Ayush1311/PROJECT-ANONYMOUS/hosts.sh
#------------------ --#

#--FUNCTION--#
chmod 664 /system/etc/hosts
> /system/etc/hosts
printf ".net\n.org\n.in\n.mobi\n.wiki\n.us\n.qq.com\n.helpshift.com\n.co\n.igamecj.com\n.biz\n.tel\n.tencent.com\n.qcloud.com\n.dns.com\n.proximabeta.com\n.cnn.com\n.cnzz.com\n.igamecj.com\n.tencent.com\n.pubgmobile.com\n.gcloud.com\n.gcloudcs.com" > /system/etc/hosts

#--WARNING = .com domains should not be blocked--#

#--CREDITS--#
#@AyushChatterjee(t.me/AyushChatterjee)
#@itsMercy(t.me/itsmercy)
#@RaZeR877(t.me/RaZeR877)
