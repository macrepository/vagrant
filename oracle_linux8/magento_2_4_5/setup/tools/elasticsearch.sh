#!/bin/bash

sudo dnf -y install java-1.8.0-openjdk java-1.8.0-openjdk-devel
wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-7.17.5-x86_64.rpm
sudo rpm -ivh elasticsearch-7.17.5-x86_64.rpm

sudo systemctl enable elasticsearch.service