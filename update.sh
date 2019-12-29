#!/bin/bash

echo "yay"
MYDATE=`date -I`

git pull

wsoffcli fetch && git add .
git commit -m $MYDATE && echo "commit"
git push

echo "end"
