#!/bin/sh
docker rm -f elasticsearch
docker run -d --name elasticsearch \
  -v ${PWD}/elasticsearch/elasticsearch.yml:/usr/share/elasticsearch/config/elasticsearch.yml:rw \
  -v /volume1/docker/es_backup:/var/backups:rw \
  -v /volume1/docker/elasticsearch:/usr/share/elasticsearch/data:rw \
  -p 9200:9200 \
  -p 9300:9300 \
  elasticsearch:7.9.3