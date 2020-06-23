
ARG BUILD_FROM=docker.elastic.co/beats/filebeat:7.9.0-SNAPSHOT

FROM $BUILD_FROM

COPY filebeat.yml /usr/share/filebeat/filebeat.yml
USER root
RUN chown root:filebeat /usr/share/filebeat/filebeat.yml
COPY fields.yml /usr/share/filebeat/fields.yml
RUN chmod go-w /usr/share/filebeat/filebeat.yml \
	&& chmod go-w /usr/share/filebeat/fields.yml
USER filebeat
