#!/usr/bin/env bash
echo ">>> Building Dockerfile and container"
echo ">>> Step 1 : Create base image for python 3.7 build"
docker build -t mrparth.resume:latest .

if [ $? -eq 0 ]
    then
        echo ">>> Docker build & Test successfully"
    else
        exit 1
fi
