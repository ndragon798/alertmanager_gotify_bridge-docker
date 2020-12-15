# alertmanager_gotify_bridge-docker
A dockerized version of https://github.com/DRuggeri/alertmanager_gotify_bridge

docker run -e GOTIFY_TOKEN=gotifytoken -e ENDPOINT=gotifyendpoint -p 8085:8080 nathaneaston/alertmanager_gotify_bridge-docker
