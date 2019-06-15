1. Building App from Dockerfile
```
docker build -t gin/nodeapp:1.0 ./app
```
2. Creating separate network for DB connection
```
docker network create nodeapp
```
3. Starting MongoDB Container
```
docker run -d --network=nodeapp \
--network-alias=post_db  mongo:latest
```
4. Running App
```
docker run -d --network=nodeapp \
-p 8081:8081 gin/nodeapp:1.0
```