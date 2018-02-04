#!/bin/sh

clear

container_name="net-api"

a=$(docker container ls -aq -f name=$container_name)

if [ "$a" != "" ]; then
    echo "stopping container $container_name = $a..."
    docker container stop $a
    echo "removing container $container_name = $a..."
    docker container rm -v $a
fi

echo "Cleanup $container_name"