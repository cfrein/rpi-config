#!/bin/bash
NAME=$(dirname $0)
echo $NAME:
cd $NAME
../inc.sh

../hostapd/setup.sh

echo Setup $NAME
sudo apt-get install usb-modeswitch wvdial

#UMTS-Stick Huawei 173 dauerhaft auf Modem-only umstellen
#Stick bei laufendem System einstecken
#miniterm.py /dev/ttyUSB0
#	at^u2diag=0
#ggf. wieder einschalten mit 1

#Pin disablen
#	at+cpin="XXXX"
#	at+clck="SC",0","XXXX"
#Weitere Optionen:
# 1 - einschalten
# 2 - Modus-Check

#sudo sh -c "echo 1 > /proc/sys/net/ipv4/ip_forward"
##echo net.ipv4.ip_forward=1 |tee -a /etc/sysctl.conf
#
#INTERN=wlan0
#EXTERN=ppp0
#sudo iptables -t nat -A POSTROUTING -o $EXTERN -j MASQUERADE
#sudo iptables -A FORWARD -i $EXTERN -o $INTERN -m state --state RELATED,ESTABLISHED -j ACCEPT
#sudo iptables -A FORWARD -i $INTERN -o $EXTERN -j ACCEPT
#
#sudo sh -c iptables-save > /etc/iptables.ipv4.nat
#echo up iptables-restore < /etc/iptables.ipv4.nat |sudo tee -a /etc/network/interfaces
