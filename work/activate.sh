#!/bin/bash
NAME=$(dirname $0)
echo $NAME:
cd $NAME
../inc.sh
../deactivate_last.sh
echo Activate $NAME

echo -interfaces
cp -v etc/interfaces /etc/network/interfaces
echo -wpa-config
TARGET=/etc/wpa_supplicant/wpa_supplicant.conf-eap
cp -v etc/wpa_supplicant.conf-eap $TARGET
sed -i $TARGET -e "s/IDENTITY/$IDENTITY/" -e "s/PASS/$PASS/"

echo $NAME > ../last.txt

