#!/bin/bash

OUT=$(pwd)/downloads

docker run --rm -v $OUT:/root/Downloads youtube-mp3-dl:latest $1
