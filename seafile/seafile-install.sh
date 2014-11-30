#!/bin/bash
FILENAME=seafile-server_3.1.6_pi.tar.gz

wget https://bitbucket.org/haiwen/seafile/downloads/$FILENAME
SOURCE=$PWD/$FILENAME
TARGET=/opt/seafile
sudo mkdir -p $TARGET
cd $TARGET
sudo tar xzf $SOURCE
sudo apt-get -y install python2.7 python-setuptools python-simplejson python-imaging sqlite3
sudo ln -vsf /data/.toplevel/seafile-data/ /data/seafile-data

#sudo chown  pi . -R
#./setup-seafile.sh 
#./seafile.sh start
#./seahub.sh start 8000

#crontab:
#@reboot sleep 20 && /home/seafile/seafile-server-latest/seafile.sh start && /home/seafile/seafile-server-latest/seahub.sh start 8000

