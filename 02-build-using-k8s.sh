#!/bin/bash

echo -e 'FROM alpine \nRUN echo "created from standard input"' > Dockerfile | tar -cf - Dockerfile | gzip -9 | kubectl apply -f pod.yml 
