#!/bin/sh
docker rm -f logstash
docker run -d --name logstash --restart=always -p 514:5140/udp -p 9600:9600 --link elasticsearch:elasticsearch -v /volume1/docker/logstash/logstash.conf:/usr/share/logstash/pipeline/logstash.conf logstash:7.9.3