#!/bin/bash

echo " Starting Cloud Migration Services..."

# Build Docker images
echo " Building Docker images..."
docker build -t backend-app ./docker/Dockerfile.backend
docker build -t frontend-app ./docker/Dockerfile.frontend

# Start services using docker-compose
echo "Launching containers with Docker Compose..."
docker-compose -f docker/docker-compose.yml up -d

# Optional: Simulate Kubernetes apply
echo " Simulating Kubernetes Deployment (kubectl apply)..."
# kubectl apply -f k8s/deployment.yaml

echo " All services started successfully."
