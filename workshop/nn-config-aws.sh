#!/usr/bin/env bash
set -e  # halt if error

cd THIS_FOLDER
mkdir -p ~/.aws
cp  .aws/config     ~/.aws/config
cp  .aws/credential ~/.aws/credential
