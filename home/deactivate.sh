#!/bin/bash
NAME=$(dirname $0)
echo $NAME:
cd $NAME
../inc.sh
echo Deactivate $NAME

echo -xbmc
sed -i /etc/default/xbmc -e 's/ENABLED=1/ENABLED=0/'

echo -fstab
sed -i /etc/fstab -e /fritz/d
sed -i /etc/fstab -e /ntfs/d
