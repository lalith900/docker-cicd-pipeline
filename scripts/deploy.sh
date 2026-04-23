#!/bin/bash

# Stop old container
docker stop myapp || true

# Remove old container
docker rm myapp || true

# Pull latest image from ECR
docker pull 159827196218.dkr.ecr.us-east-1.amazonaws.com/newrepo:latest

# Run new container
docker run -d -p 80:80 --name myapp \
159827196218.dkr.ecr.us-east-1.amazonaws.com/newrepo:latest
