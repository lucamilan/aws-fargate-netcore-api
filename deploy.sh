#!/bin/sh

#$AWS_ACCOUNT env variable

clear

echo "push image to ECR"

container_name="net-api"

a=$(docker container ls -aq -f name=$container_name)

if [ "$a" == "" ]; then

    echo "build container $container_name"

    docker build --rm -t $container_name .

fi

eval `aws ecr get-login --no-include-email --region us-east-1`;

docker tag $container_name:latest $AWS_ACCOUNT.dkr.ecr.us-east-1.amazonaws.com/$container_name:v1

docker push $AWS_ACCOUNT.dkr.ecr.us-east-1.amazonaws.com/$container_name:v1

echo "push container $container_name"



