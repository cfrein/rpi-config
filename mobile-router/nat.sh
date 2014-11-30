sudo sh -c "echo 1 > /proc/sys/net/ipv4/ip_forward"
#echo net.ipv4.ip_forward=1 |tee -a /etc/sysctl.conf

INTERN=wlan0
EXTERN=ppp0
sudo iptables -t nat -A POSTROUTING -o $EXTERN -j MASQUERADE
sudo iptables -A FORWARD -i $EXTERN -o $INTERN -m state --state RELATED,ESTABLISHED -j ACCEPT
sudo iptables -A FORWARD -i $INTERN -o $EXTERN -j ACCEPT

sudo sh -c iptables-save > /etc/iptables.ipv4.nat
echo up iptables-restore < /etc/iptables.ipv4.nat |sudo tee -a /etc/network/interfaces
