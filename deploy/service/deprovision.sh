#!/usr/bin/env bash

here=$(dirname ${BASH_SOURCE[0]})

kubectl delete -f ${here}/udagram-api-feed.service.yaml
kubectl delete -f ${here}/udagram-api-user.service.yaml
kubectl delete -f ${here}/udagram-frontend.service.yaml
kubectl delete -f ${here}/udagram-reverse-proxy.service.yaml
kubectl delete service udagram-frontend-public
kubectl delete service udagram-reverse-proxy-public