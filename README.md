# Docker elkx development setup

I am using this container for a project @ Fontys Hogescholen. Plugins installed: 

* X-Pack
* [transform_vis](https://github.com/PhaedrusTheGreek/transform_vis) (richardkippers_transform_vis is a fork adjusted for kibana 6.2.3)

*Base image: sebp/elk:623*

Change `elasticsearch.password` in `kibana.yml` to you own password

## Setup

1. Run `run.sh`
2. Open container terminal (`docker exec -it elkx /bin/bash`)
3. Change password (run `cd ${ES_HOME} && bin/x-pack/setup-passwords interactive`)

Open Kibana on [http://localhost:5601](http://localhost:5601) and log in with user `kibana` and your own password.


## Troubleshooting
On linux run `sysctl -w vm.max_map_count=262144` [Info](https://www.elastic.co/guide/en/elasticsearch/reference/current/_maximum_map_count_check.html#_maximum_map_count_check)