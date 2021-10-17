## Synology Elasticsearch Logstash Kibana stack

This will create a simple ELK stack on your synology

### Prerequisites

1. Elasticsearch uses 1+ GB of RAM, Kibana and Logstash uses 700MB and 800 MB respectively. Please ensure your NAS has enough RAM for this.
2. Create a share named "docker" with synology UI where the elasticsearch volume data will be preserved

### Customizations

I have customized the logstash grok patterns specifically to handle logs from Grandstream HT801 IP phone device.
