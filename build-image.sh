#!/bin/bash

TAG=${TAG:-$1}
IMAGE=foxboxsnet/nginx-proxy-alpine-letsencrypt:${TAG}

git pull

docker rm `docker ps -a -q`	> /dev/null
docker images | grep none | awk '{print $3}' | xargs docker rmi	> /dev/null


cd $(dirname $0)
docker build --no-cache -t ${IMAGE} .

docker stop test	> /dev/null
docker rm test		> /dev/null
../run.sh ${TAG}