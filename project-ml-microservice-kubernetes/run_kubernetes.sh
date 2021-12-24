#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath='deepasj/api1'

# Step 2
# Run the Docker Hub container with kubernetes
minikube kubectl -- run api1 --image=deepasj/api1:api1

# Step 3:
# List kubernetes pods
minikube kubectl -- get pods

# Step 4:
# Forward the container port to a host
minikube kubectl -- port-forward api1 8000:80