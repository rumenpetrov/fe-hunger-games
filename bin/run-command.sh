#!/bin/sh

# Run temporary container and execute commands inside of it
podman run \
  -it \
  --rm \
  --net=host \
  --privileged \
  -v "$(pwd)"/:/var/www/app:Z \
  localhost/fe-hunger-games-node:latest \
  $@