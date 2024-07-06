FROM alpine:3.19

RUN echo "*** updating system ***" \
    && apk update \
    && apk upgrade \
    && echo "*** installing packages ***" \
    && apk --no-cache add bash \
    && echo "*** cleanup ***" \
    && rm -rf /tmp/* /var/tmp/*

COPY scripts/hello-world.sh /
RUN chmod +x /hello-world.sh

CMD [ "bash", "/hello-world.sh" ]

