#!/bin/sh

echo "yay"
MYDATE=`date -I`

git pull

wsoffcli fetch && git add .
git commit -m $MYDATE
git push

echo "end"
