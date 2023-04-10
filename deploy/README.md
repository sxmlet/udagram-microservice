## Prerequisites
Configured environment variables through these descriptors:
* secrets.yaml
* env-configmap.yaml

The application operates on top of environment variables:
* UDAGRAM_ACCESS_KEY_ID - AWS access key
* UDAGRAM_SECRET_ACCESS_KEY - AWS secret key
* UDAGRAM_SESSION_TOKEN - AWS session token
* POSTGRES_USER - RDS user name
* POSTGRES_PASSWORD - RDS password
* POSTGRES_DB - RDS db name
* POSTGRES_HOST - RDS host name
* JWT_SECRET - arbitrary string

The example files provide the environment variables. In secrets.yaml all values must be encoded into base64 hashes.

## Deployment

Add metrics server (required for hpa)
```shell
kubectl apply -f https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yaml
```

**Helper scripts**

There are helper scripts in the directory to speed up things when running the application
```shell
./deployment/provision.sh
./service/provision.sh
```
