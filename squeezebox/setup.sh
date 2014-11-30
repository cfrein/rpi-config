#!/bin/bash
NAME=$(dirname $0)
echo $NAME:
cd $NAME
../inc.sh

echo Setup $NAME

#----------
#Squeezebox-Server
#http://www.0x1.be/esa/dev/2014/02/01/raspberry-howto-squeezeboxserver/#_Toc379049519
#sudo apt-get -y install libjpeg8 libpng12-0 libgif4 libexif12 libswscale2 libavcodec53 lame
VERSION=7.8
#wget http://downloads.slimdevices.com/LogitechMediaServer_v$VERSION/logitechmediaserver_$VERSION\_all.deb
#dpkg -i logitechmediaserver_$VERSION\_all.deb
#----------

#----------
#Squeezebox-Client
#http://www.0x1.be/esa/dev/2014/02/01/raspberry-howto-squeezeboxserver/#_Toc379049519
sudo apt-get install -y libflac-dev libfaad2 libmad0
TARGETPATH=/opt/squeezelite
sudo mkdir -p $TARGETPATH
cd $TARGETPATH
TARGET=squeezelite-armv6hf
sudo wget http://squeezelite.googlecode.com/files/$TARGET
sudo chmod u+x $TARGET
#
#----------
