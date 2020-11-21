FROM alpine:edge

RUN apk add --no-cache dnsmasq

COPY ./etc/dnsmasq.conf /etc/dnsmasq.conf
COPY ./etc/dnsmasq.d /etc/dnsmasq.d
COPY ./etc/.hosts-blacklist /etc/.hosts-blacklist

EXPOSE 53

ENTRYPOINT ["dnsmasq","-d"]
