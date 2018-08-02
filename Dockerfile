FROM alpine:3.5

RUN apk --update --no-cache add git python py-pip bash && \
    pip install git+git://github.com/bloomreach/s4cmd && \
    rm -rf /var/cache/apk/*

RUN chmod +x /usr/bin/s4cmd

ENTRYPOINT ["/usr/bin/s4cmd"]

CMD ["--help"]
