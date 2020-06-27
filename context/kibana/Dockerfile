
ARG BUILD_FROM=docker.elastic.co/kibana/kibana:7.9.0-SNAPSHOT

FROM $BUILD_FROM

USER root
RUN yum install -y net-tools; yum clean all
USER kibana

HEALTHCHECK --interval=10s --timeout=1s --retries=10 \
	CMD netstat -plnt | grep 5601
