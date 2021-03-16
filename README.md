# alertmanager_gotify_bridge-docker

A dockerized version of https://github.com/DRuggeri/alertmanager_gotify_bridge

[![Docker Pulls](https://img.shields.io/docker/pulls/nathaneaston/alertmanager_gotify_bridge-docker.svg)](https://hub.docker.com/repository/docker/nathaneaston/alertmanager_gotify_bridge-docker)


```
docker run -e GOTIFY_TOKEN=gotifytoken -e ENDPOINT=gotifyendpoint -p 8085:8080 nathaneaston/alertmanager_gotify_bridge-docker
```
```
version: '3'
services:
  gotify_bridge:
    image: nathaneaston/alertmanager_gotify_bridge-docker
    environment: 
      - GOTIFY_TOKEN=$GOTIFY_TOKEN
      - ENDPOINT=https://push.example.com/message
    ports:
      - 8078:8080
    restart: always
```
