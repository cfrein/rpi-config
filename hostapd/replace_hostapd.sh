#!/bin/bash
#wget http://www.daveconroy.com/wp4/wp-content/uploads/2013/07/hostapd.zip
unzip hostapd.zip
mv -n /usr/sbin/hostapd /usr/sbin/hostapd.bak
mv hostapd /usr/sbin/hostapd.edimax
ln -sf /usr/sbin/hostapd.edimax /usr/sbin/hostapd
chown root.root /usr/sbin/hostapd
chmod 755 /usr/sbin/hostapd

