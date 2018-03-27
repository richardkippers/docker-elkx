FROM richardkippers/elkx_base

# Add kibana.yml and elastic.yml 
COPY kibana.yml /opt/kibana/config/kibana.yml
COPY elasticsearch.yml /etc/elasticsearch/elasticsearch.yml
