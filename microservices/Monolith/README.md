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
Link docker commands to docker-host:
```
eval $(docker-machine env docker-host)
```
Build docker image (Must be in Dockerfile dir):
```
docker build -t nodeapp:latest .
```
Run you app (add firewall rule in GoogleCloud):
```
sudo docker run --name nodeapp -d --network=host nodeapp:latest 
```

