FROM alpine:latest
MAINTAINER SteamCache.Net Team <team@steamcache.net> Logicism <blazewalker462@protonmail.com>

RUN	apk update \
	&& apk add dnsmasq

COPY . /

EXPOSE 53/udp

ENTRYPOINT [ "steamcache-dns" ]
