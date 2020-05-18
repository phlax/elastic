
ARG BUILD_FROM=docker.elastic.co/beats/metricbeat:7.8.0-SNAPSHOT

FROM $BUILD_FROM

USER root
COPY metricbeat.yml /usr/share/metricbeat/metricbeat.yml
COPY fields.yml /usr/share/metricbeat/fields.yml
RUN chmod go-w /usr/share/metricbeat/metricbeat.yml \
	&& chmod go-w /usr/share/metricbeat/fields.yml
