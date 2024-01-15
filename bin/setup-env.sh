#!/bin/sh

# Remove any old image, if it's existing
podman rmi fe-hunger-games-node:latest

# This will read the Dockerfile and will create an image
podman build -f ./Containerfile -t fe-hunger-games-node:latest
