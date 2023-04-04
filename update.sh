#!/bin/bash

echo "yay"
MYDATE=`date -I`
PWD=`pwd`
DOCKER_IMAGE = "akenaide/wsoffcli:master"

git pull
docker pull $DOCKER_IMAGE
docker run --rm --user "$(id -u):$(id -g)" -v $PWD:/data $DOCKER_IMAGE fetch -a && git add .
git commit -m $MYDATE && echo "commit"
git push

echo "end"
