#!/usr/bin/env bash

here=$(dirname ${BASH_SOURCE[0]})

kubectl apply -f ${here}/udagram-api-feed.deployment.yaml
kubectl apply -f ${here}/udagram-api-user.deployment.yaml
kubectl apply -f ${here}/udagram-frontend.deployment.yaml
kubectl apply -f ${here}/udagram-reverse-proxy.deployment.yaml
