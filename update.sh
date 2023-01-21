#!/bin/bash

echo "yay"
MYDATE=`date -I`
PWD=`pwd`

git pull

docker run --rm --user $(id -u) -v $PWD:/data akenaide/wsoffcli:master fetch -a && git add .
git commit -m $MYDATE && echo "commit"
git push

echo "end"
