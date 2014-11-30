#!/bin/bash
echo setup:

apt-get remove --purge wolfram-engine
apt-get update
apt-get dist-upgrade -y
apt-get install -y vim ntfs-3g

DATA=/data
#SHARE=$DATA/.toplevel/Intenso-ExternalUSB3-0-01
SHARE=$DATA/.toplevel
mkdir -vp $DATA/.toplevel
for NAME in vid mux; do ln -vsf $SHARE/$NAME $DATA/$NAME; done

