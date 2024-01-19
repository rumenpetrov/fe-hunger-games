#!/bin/sh

# Remove any old image, if it's existing
podman rmi fe-hunger-games-node:latest

# Read the Containerfile, create an image and tag it
podman build -f ./Containerfile -t fe-hunger-games-node:latest
