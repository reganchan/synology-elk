#!/bin/sh
docker rm -f kibana
docker run -d --restart=always --name kibana -p 5601:5601 --link elasticsearch:elasticsearch kibana:7.9.3