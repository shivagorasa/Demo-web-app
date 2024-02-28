#!/bin/bash

DOCKER_USERNAME="shivagorasa"
IMAGE_NAME="my-app-new"
TAG="latest"

# Build Docker image
docker build -t $DOCKER_USERNAME/$IMAGE_NAME:$TAG .

# Log in to Docker Hub
docker login

# Push Docker image to Docker Hub
docker push $DOCKER_USERNAME/$IMAGE_NAME:$TAG

echo "Deployment to Docker Hub completed successfully!"

