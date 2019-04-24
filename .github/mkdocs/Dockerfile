FROM peaceiris/mkdocs-material:latest

COPY entrypoint.sh /entrypoint.sh

RUN apk add --no-cache \
    git \
    openssh-client

ENTRYPOINT ["/entrypoint.sh"]
