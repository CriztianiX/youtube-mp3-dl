#!/bin/bash

OUT=$(pwd)/downloads

IMAGE_NAME="youtube-mp3-dl"
TAG="latest"

if docker images --format '{{.Repository}}:{{.Tag}}' | grep -q "${IMAGE_NAME}:${TAG}"; then
    echo ""
else
    docker build -t "${IMAGE_NAME}:${TAG}" .
fi

docker run --rm -v $OUT:/root/Downloads youtube-mp3-dl:latest $1
