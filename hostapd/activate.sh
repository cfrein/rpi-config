#!/bin/bash
NAME=$(dirname $0)
echo $NAME:
cd $NAME
../inc.sh
echo Activate

echo -hostapd
cp -v etc/hostapd.conf /etc/hostapd/
cp -v default/hostapd /etc/default/
update-rc.d hostapd enable

echo -dnsmasq
cp -v etc/dnsmasq.conf /etc/
cp -v etc/dnsmasq-local.conf /etc/dnsmasq.d/
update-rc.d dnsmasq enable

echo -ifplugd
cp -v default/ifplugd /etc/default/

