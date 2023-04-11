#!/usr/bin/env bash

here=$(dirname ${BASH_SOURCE[0]})

kubectl delete -f ${here}/udagram-api-feed.deployment.yaml
kubectl delete -f ${here}/udagram-api-user.deployment.yaml
kubectl delete -f ${here}/udagram-reverse-proxy.deployment.yaml
kubectl delete -f ${here}/udagram-frontend.deployment.yaml
