FROM alpine

MAINTAINER Yosuke Matsusaka <yosuke.matsusaka@gmail.com>

RUN apk add --no-cache tini lighttpd perl perl-cgi curl

ADD . /app

EXPOSE 80

ENTRYPOINT ["/sbin/tini", "--"]

CMD lighttpd -D -f /app/lighttpd.conf 2>&1
