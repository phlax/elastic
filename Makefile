#!/usr/bin/make -f

SHELL := /bin/bash


images:
	cd context/kibana && \
	  	 docker build -t phlax/kibana .
	cd context/metricbeat && \
	  	 docker build -t phlax/metricbeat .
	cd context/filebeat && \
	  	 docker build -t phlax/filebeat .

docker-push:
	docker push phlax/kibana
	docker push phlax/metricbeat
	docker push phlax/filebeat
