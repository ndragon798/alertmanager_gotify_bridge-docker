FROM golang:alpine
RUN apk --no-cache add git
RUN go install github.com/DRuggeri/alertmanager_gotify_bridge@latest
ENV PORT=8080
ENV BIND_ADDRESS=0.0.0.0
ENV WEBHOOOK_PATH="/gotify_webhook"
ENV TIMEOUT=5s
ENV TITLE_ANNOTATION="description"
ENV MESSAGE_ANNOTATION="summary"
ENV DEFAULT_PRIORITY=5
ENTRYPOINT  alertmanager_gotify_bridge --bind_address=$BIND_ADDRESS --port=$PORT --debug --gotify_endpoint=$ENDPOINT
