# Udagram

Assignment for Udacity Cloud Developer course.

The application consists of 3 services:
* A frontend application written in ionic on top of angular
* A backend microservice for user handling
* Another backend microservice for handling image and content uploads

## Getting started

`screenshots` directory contains the completion proof.

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

## Submission info

Corresponding docker repositories:
* https://hub.docker.com/repository/docker/sxmlet/udagram-reverse-proxy/general
* https://hub.docker.com/repository/docker/sxmlet/udagram-api-user/general
* https://hub.docker.com/repository/docker/sxmlet/udagram-api-feed/general
* https://hub.docker.com/repository/docker/sxmlet/udagram-frontend/general
