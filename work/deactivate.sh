#!/bin/bash
NAME=$(dirname $0)
echo $NAME:
cd $NAME
../inc.sh
echo Deactivate $NAME
