FROM golang:alpine
RUN apk --no-cache add git
RUN go get github.com/DRuggeri/alertmanager_gotify_bridge
ENTRYPOINT [ "alertmanager_gotify_bridge","--bind_address=0.0.0.0","--port=8080","--debug"]