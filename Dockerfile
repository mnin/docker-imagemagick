FROM  alpine:latest

RUN apk add --no-cache --update imagemagick

COPY docker-entrypoint.sh /usr/local/bin
RUN ln -s /usr/local/bin/docker-entrypoint.sh /
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]

ENTRYPOINT ["/docker-entrypoint.sh"]
