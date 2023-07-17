FROM alpine:latest

WORKDIR /app

COPY entrypoint.sh /app/entrypoint.sh

RUN apk add curl && \
    chmod +x entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]
