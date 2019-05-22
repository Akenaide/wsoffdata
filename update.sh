#!/bin/sh

echo "yay"

git fetch
git checkout origin/master

wsoffcli fetch 
MYDATE=`date -I`
git checkout -b $MYDATE
git add .
git commit -m $MYDATE
git push
hub pull-request -m $MYDATE

echo "end"
