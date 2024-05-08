
# Nginx Docker and Kubernetes Deployment

## Project Overview
This repository contains a simple demonstration of containerizing and deploying a static web page using Nginx, Docker, and Kubernetes. It is aimed at showcasing basic skills in these technologies, ideal for anyone preparing for an entry-level cloud position.

## Technologies
- **Docker**: Utilized to containerize the Nginx server.
- **Kubernetes (K8s)**: Used to orchestrate and manage the lifecycle of the containerized application.
- **Nginx**: Serves as the web server to deliver the static content.

## Setup and Deployment Instructions

### Prerequisites
Ensure you have the following installed:
- Docker (For building and running containers)
- A Kubernetes cluster (Minikube or any managed Kubernetes service)
- kubectl (Configured to interact with your Kubernetes cluster)

### Step-by-Step Guide

#### 1. Build the Docker Image
From the project directory containing the Dockerfile, run the following command to build the Docker image:
```bash
docker build -t my-nginx .
```

#### 2. Run the Docker Container
To see the Nginx server in action locally, execute:
```bash
docker run -p 8080:80 my-nginx
```
Access the server by navigating to `http://localhost:8080` in your web browser.

#### 3. Deploy to Kubernetes
Deploy the image to your Kubernetes cluster:
```bash
kubectl apply -f nginx-deployment.yaml
```

Expose the deployment to external traffic:
```bash
kubectl expose deployment nginx-deployment --type=LoadBalancer --name=nginx-service
```

Monitor the deployment and service:
```bash
kubectl get all
```

## Author
- [Jean C. Rosario]
