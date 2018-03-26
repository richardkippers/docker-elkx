# Docker ELK + X-Pack development setup

For a project @  Fontys Hogeschool. I have seperated a Dockerfile witch installs ELK/X-Pack and a 'custom' docker file so ELK and X-Pack does not have to be installed over and over.

*Base image: sebp/elk:621*

Change `elasticsearch.password` in `kibana.yml` to you own password

## Setup base image

1. Run `create_base_container.sh` or `docker build --file Dockerfile_base --tag richardkippers/elkx_base .`


## Use the image

1. Run `create_and_run_main_container.sh`
2. Open container terminal (`docker exec -it elkx /bin/bash`)
3. Change password (run `cd ${ES_HOME} && bin/x-pack/setup-passwords interactive`)

Open Kibana on [http://localhost:5601](http://localhost:5601) and log in with user `kibana` and your own password.

or

{TODO}


## Troubleshooting
On linux run `sysctl -w vm.max_map_count=262144` [Info](https://www.elastic.co/guide/en/elasticsearch/reference/current/_maximum_map_count_check.html#_maximum_map_count_check)