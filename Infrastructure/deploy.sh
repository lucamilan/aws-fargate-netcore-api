#!/bin/sh

clear

aws cloudformation deploy --stack-name=production --template-file=./networking.yml --capabilities=CAPABILITY_IAM --region=us-east-1