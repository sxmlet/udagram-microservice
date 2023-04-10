# Udagram

Assignment for Udacity Cloud Developer course.

The application consists of 3 services:
* A frontend application written in ionic on top of angular
* A backend microservice for user handling
* Another backend microservice for handling image and content uploads

## Getting started

## Deployment

Deployment descriptor files are under `./deploy` directory.

Add metrics server (required for hpa)
```shell
kubectl apply -f https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yaml
```

Create the secret and config map:
```shell
kubectl apply -f secret.yaml
kubectl apply -f env-configmap.yaml
```

