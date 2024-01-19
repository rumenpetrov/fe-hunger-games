#!/bin/sh

podman run \
  -it \
  --rm \
  --net=host \
  --privileged \
  --name "fe-hunger-games" \
  -v "$(pwd)"/:/var/www/app:Z \
  localhost/fe-hunger-games-node:latest

