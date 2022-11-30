#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath = "chisomjude/microsvc"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run udacityproject4 --image=$dockerpath --port 80

# Step 3:
# List kubernetes pods
kubectl get pods
sleep 15s

# Step 4:
# Forward the container port to a host
kubectl port-forward udacityproject4 --address 0.0.0.0 8000:80
