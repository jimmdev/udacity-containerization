#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=jimmdev/udacity-python-app

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run udacity-python\
    --generator=run.pod/v1\
    --image=$dockerpath\
    --port 80 --labels app=udacity-python

# Step 3:
kubectl get pods

# Step 4:
kubectl port-forward udacity-python 8080:80

