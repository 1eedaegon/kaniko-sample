#!/bin/bash

echo -e 'FROM alpine \nRUN echo "created from standard input"' > Dockerfile | tar -cf - Dockerfile | gzip -9 | docker run \
  --interactive -v $(pwd):/workspace gcr.io/kaniko-project/executor:latest \
  --context tar://stdin \
  --destination=hub.docker.com/1eedaegon/practice-kaniko:latest
