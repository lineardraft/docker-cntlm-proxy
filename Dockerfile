FROM alpine:latest
MAINTAINER Vladimir Stojkovic <vladimir.stojkovic@outlook.com>
RUN apk add --no-cache cntlm
COPY files/cntlm.conf /etc/cntlm.conf
COPY scripts/init_container.sh /usr/local/sbin/init_container.sh
RUN chmod 755 /usr/local/sbin/init_container.sh
EXPOSE 3128
CMD init_container.sh