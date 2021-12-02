FROM alpine:3.13

RUN apk add -U amavis perl-db p7zip unrar lrzip lz4 rpm2cpio unarj cabextract lha razor \
    && rm -rf /var/cache/apk/*
    #&& addgroup -g 10024 amavis \
    #&& adduser -S -D -G amavis -u 10024 -h /home/amavis/ amavis \

COPY conf/amavisd.conf /etc/amavisd.conf
COPY entrypoint.sh /

EXPOSE 10024

ENTRYPOINT ["/entrypoint.sh"]
