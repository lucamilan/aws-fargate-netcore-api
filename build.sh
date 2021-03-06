#!/bin/sh

clear

echo "build from zero"

container_name="net-api"

a=$(docker container ls -aq -f name=$container_name)

if [ "$a" != "" ]; then
    echo "stopping container $container_name = $a..."
    docker container stop $a
    echo "removing container $container_name = $a..."
    docker container rm -v $a
fi

docker build --rm -f Dockerfile -t $container_name .

docker run -d --name $container_name -p 80:80 $container_name

echo "Up and running at: http://localhost:80/api"