
ARG BUILD_FROM=docker.elastic.co/kibana/kibana:7.8.0-SNAPSHOT

FROM $BUILD_FROM

HEALTHCHECK --interval=10s --timeout=1s --retries=5 \
	CMD curl --write-out 'HTTP %{http_code}' --fail --silent --output /dev/null http://localhost:5601/api/status
