#!/bin/bash
NAME=$(dirname $0)
echo $NAME:
cd $NAME
../inc.sh
echo Setup $NAME

apt-get install hostapd dnsmasq

BACKUP=/usr/sbin/hostapd.bak
DAEMON=/usr/sbin/hostapd 

#wget http://www.daveconroy.com/wp4/wp-content/uploads/2013/07/hostapd.zip
unzip hostapd.zip
mv -vn $DAEMON $BACKUP
mv -v hostapd $DAEMON.edimax
ln -vsf $DAEMON.edimax $DAEMON
chown -v root:root $DAEMON
chmod -v 755 $DAEMON

