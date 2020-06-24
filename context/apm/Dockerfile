
ARG BUILD_FROM=docker.elastic.co/apm/apm-server:7.9.0-SNAPSHOT

FROM $BUILD_FROM

USER root
# add checksum...
RUN curl -L https://github.com/stedolan/jq/releases/download/jq-1.6/jq-linux64 > /usr/local/bin/jq \
    && chmod +x /usr/local/bin/jq
RUN yum install -y net-tools; yum clean all
COPY apm-server.yml /usr/share/apm-server/apm-server.yml
RUN chmod go-w /usr/share/apm-server/apm-server.yml
USER apm-server

HEALTHCHECK --interval=10s --timeout=1s --retries=5 \
	CMD netstat -plnt | grep 8200
