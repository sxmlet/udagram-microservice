#!/usr/bin/env bash

here=$(dirname ${BASH_SOURCE[0]})

kubectl apply -f ${here}/udagram-api-feed.service.yaml
kubectl apply -f ${here}/udagram-api-user.service.yaml
kubectl apply -f ${here}/udagram-frontend.service.yaml
kubectl apply -f ${here}/udagram-reverse-proxy.service.yaml

kubectl expose --type LoadBalancer deployment udagram-frontend --name udagram-frontend-public
kubectl expose --type LoadBalancer deployment udagram-reverse-proxy --name udagram-reverse-proxy-public
