#!/bin/sh

docker run \
  -it \
  --rm \
  --net=host \
  --privileged \
  --name "fe-hunger-games" \
  -v "$(pwd)"/:/var/www/app:Z \
  fe-hunger-games-node:latest

