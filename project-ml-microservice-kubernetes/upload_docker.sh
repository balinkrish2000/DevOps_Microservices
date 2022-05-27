#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=balinkrish2000/udacityapi

# Step 2:  
# Authenticate & tag
docker login -u balinkrish2000
docker tag api $dockerpath:api
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker push $dockerpath:api
