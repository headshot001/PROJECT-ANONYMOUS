#!bin/bash
#PROJECT-ANONYMOUS COPYRIGHT MIT LICENCE (c) 2020 Ayush Chatterjee

#---MORE DOMAINS NEEDED---#


#--AUTO UPDATE HOSTS--#
cd $HOME/PROJECT-ANONYMOUS
rm hosts.sh
git clone https://github.com/Ayush1311/PROJECT-ANONYMOUS/hosts.sh
#---------------------#

#--FUNCTION--#
> /system/etc/hosts
printf ".com\n.net\n.org\n.in\n.mobi\n.wiki\n.us\n.qq.com\n.helpshift.com\n.co\n.igamecj.com\n.biz\n.tel\n.tencent.com\n.qcloud.com\n.dns.com\n.proximabeta.com\n.cnn.com\n.cnzz.com\n.igamecj.com\n.tencent.com\n.pubgmobile.com\n.gcloud.com\n.gcloudcs.com\n.myqcloud.com\n.imsdk.com\n.amazonaws.com\n.1e100.net" > /system/etc/hosts
#--CREDITS--#
#@AyushChatterjee(t.me/AyushChatterjee)
#@itsMercy(t.me/itsmercy)
#@RaZeR877(t.me/RaZeR877)
