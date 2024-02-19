#!/bin/sh

# Run temporary container and execute commands inside of it
docker run \
  -it \
  --rm \
  --net=host \
  --privileged \
  -v "$(pwd)"/:/var/www/app:Z \
  fe-hunger-games-node:latest \
  $@