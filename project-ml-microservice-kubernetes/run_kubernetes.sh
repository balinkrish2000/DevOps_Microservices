#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=balinkrish2000/udacityapi

# Step 2
# Run the Docker Hub container with kubernetes
docker login -u balinkrish2000
kubectl run api --image=$dockerpath:api --port=8000


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward pod/api 8000:80

