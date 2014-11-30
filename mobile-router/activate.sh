#!/bin/bash
NAME=$(dirname $0)
echo $NAME:
cd $NAME
../inc.sh
echo Activate

../deactivate_last.sh

../hostapd/activate.sh

echo -wvdial
cp -v etc/wvdial.conf /etc/

echo -interfaces
cp -v etc/interfaces /etc/network/interfaces

echo -iptables
#/etc/network/interfaces has to be configured
cp -v etc/iptables.ipv4.nat /etc/iptables.ipv4.nat

echo ip_forward 
cp -v etc/ip_forward.conf /etc/sysctl.d/

echo mobile-router > ../last.txt

