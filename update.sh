#!/bin/bash

echo "yay"
MYDATE=`date -I`
PWD=`pwd`

git pull

docker run --rm -v $PWD:/data akenaide/wsoffcli fetch -a && git add .
git commit -m $MYDATE && echo "commit"
git push

echo "end"
