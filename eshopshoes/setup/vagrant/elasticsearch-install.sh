#!/bin/bash

# Install elasticsearch
sudo yum -y install java-1.8.0-openjdk.x86_64
wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-7.9.2-x86_64.rpm
sudo rpm -ivh elasticsearch-7.9.2-x86_64.rpm