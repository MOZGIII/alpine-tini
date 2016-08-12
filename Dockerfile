FROM alpine:latest

RUN apk add --update --no-cache \
    tini \
  && rm -rf /var/cache/apk/*

ENTRYPOINT ["/sbin/tini", "--"]
CMD ["sh"]
