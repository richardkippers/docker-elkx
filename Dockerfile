FROM sebp/elk:623
RUN apt-get install nano


# Elastic plugins
ENV ES_HOME /opt/elasticsearch
WORKDIR ${ES_HOME}
RUN CONF_DIR=/etc/elasticsearch gosu elasticsearch bin/elasticsearch-plugin \
    install x-pack

# Kibana plugins
WORKDIR ${KIBANA_HOME}
RUN gosu kibana bin/kibana-plugin install x-pack
RUN gosu kibana bin/kibana-plugin install https://github.com/richardkippers/transform_vis/releases/download/6.2.3/transform_vis-6.2.3.zip

# Add kibana.yml and elastic.yml 
COPY kibana.yml /opt/kibana/config/kibana.yml
COPY elasticsearch.yml /etc/elasticsearch/elasticsearch.yml
