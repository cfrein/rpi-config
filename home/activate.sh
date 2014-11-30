#!/bin/bash
NAME=$(dirname $0)
echo $NAME:
cd $NAME
../inc.sh
../deactivate_last.sh
echo Activate $NAME

echo -interfaces
TARGET=/etc/network/interfaces
cp -v etc/interfaces $TARGET 
. secrets.txt
sed -i $TARGET -e "s/SSID/$SSID/" -e "s/PASS/$PASS/" 

echo -resolv.conf
cp -v etc/resolv.conf /etc/resolv.conf

echo -xbmc
sed -i /etc/default/xbmc -e 's/ENABLED=0/ENABLED=1/'

echo -fstab
grep fritz /etc/fstab || cat << EOF >> /etc/fstab
#Connect to smb-share on fritz.box
#//fritz.box/fritz.nas /data/.toplevel cifs defaults 0 0
/dev/sda1	/data/.toplevel	ntfs-3g	defaults,noatime 0 3

EOF

echo $NAME > ../last.txt

