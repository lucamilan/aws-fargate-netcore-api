# aws-fargate-netcore-api
A simple .NET Core Api distributed as a container with AWS Fargate service.

## How to proceed

* Build and "dockerize" the .NET Core 2.x Api

```bash
docker build -t [container_name] .

docker run -d --name [container_name] -p 8000:80 [container_name]
```

* Go to AWS Console e crete a new Docker Registry

* Get Docker login command for the newly Docker Registry
```bash
`aws ecr get-login --no-include-email --region us-east-1`
```

* Do login and tag and push the container image to Docker Registry

```bash
docker tag [container_name]:latest [account_id].dkr.ecr.us-east-1.amazonaws.com/[container_name]:v1

docker push [container_name].dkr.ecr.us-east-1.amazonaws.com/$[container_name]:v1
```

## How to create Networking and Service

* Run AWS Cloudformation Template for VPC

* Run AWS Cloudformation Template for Fargate Service

Thanks to @nathanpeck for https://github.com/nathanpeck/awesome-ecs 





