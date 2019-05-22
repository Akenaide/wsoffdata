#!/bin/sh

echo "yay"

git pull

wsoffcli fetch 
MYDATE=`date -I`
git add .
git commit -m $MYDATE
git push

echo "end"
