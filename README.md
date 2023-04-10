# Udagram

Assignment for Udacity Cloud Developer course.

The application consists of 3 services:
* A frontend application written in ionic on top of angular
* A backend microservice for user handling
* Another backend microservice for handling image and content uploads

The infrastructure contains a reverse proxy microservice as well which routes the requests to the appropriate microservice.

## Deployment

Deployment descriptor files are under `./deploy` directory, more info [here](./deploy/README.md).

## Submission info

`screenshots` directory contains the completion proof.

Corresponding docker repositories:
* https://hub.docker.com/repository/docker/sxmlet/udagram-reverse-proxy/general
* https://hub.docker.com/repository/docker/sxmlet/udagram-api-user/general
* https://hub.docker.com/repository/docker/sxmlet/udagram-api-feed/general
* https://hub.docker.com/repository/docker/sxmlet/udagram-frontend/general
