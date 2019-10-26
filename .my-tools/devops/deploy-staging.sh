#!/usr/bin/env bash

# AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY are configured in ~/.aws/credentials
export PATH=$PATH:`pwd`/node_modules/.bin

# test-lambda with set of limit permission
export AWS_LAMBDA_ROLE=arn:aws:iam::615663043961:role/test-lambda

#export AWS_PROFILE=serverless-practice-namgivu # defined in ~/.aws/config  #TODO when run, we get error this profile not exists
export AWS_REGION=ap-southeast-1

export DB_HOST=localhost
export DB_DATABASE=serverless-practice-namgivu  # create database `serverless-practice-namgivu`;
export DB_USER=root
export DB_PASSWORD=root

serverless deploy  --stage staging
