#!/bin/bash

docker build -f ./Dockerfile -t 1eedaegon/kaniko-practice-sample:latest ./
docker push 1eedaegon/kaniko-practice-sample
