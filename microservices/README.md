# Docker and Microservices

### HW1
Pre:
1. Install [docker-michine](https://docs.docker.com/machine/install-machine/)
2. Install [gcloud](https://cloud.google.com/sdk/)

Run Docker in GCP:

```
docker-machine create --driver google \
--google-project docker-gin \
--google-zone europe-west1-b \
--google-machine-type f1-micro \
--google-machine-image $(gcloud compute images list --filter ubuntu-1804-lts --uri) \
docker-host
```

Try it out:

```
docker-machine ls
```
sudo docker run --name nodeapp -p 80:80 -a stdin -a stdout -d --network=host nodeapp:latest /bin/bash


