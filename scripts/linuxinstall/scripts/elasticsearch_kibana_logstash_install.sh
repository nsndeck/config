#!/bin/bash

wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
echo "deb https://artifacts.elastic.co/packages/6.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-6.x.list

sudo apt-get update -y

sudo apt-get -y install elasticsearch kibana logstash

## https://www.elastic.co/guide/en/elasticsearch/reference/current/deb.html
## https://www.elastic.co/guide/en/kibana/current/deb.html
