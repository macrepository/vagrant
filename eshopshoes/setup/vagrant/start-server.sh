#!/bin/bash

# Start server httpd
sudo systemctl enable httpd.service
sudo systemctl start httpd
echo "httpd started OK";

# Start mysqld
sudo systemctl enable mysqld.service
sudo systemctl start mysqld
echo "mysqld started OK";

# Start elasticsearch
sudo systemctl enable elasticsearch.service
sudo systemctl start elasticsearch.service
echo "elasticsearch started OK";

# Start Mailhog
sudo systemctl enable mailhog.service
sudo systemctl start mailhog.service &
echo "Mailhog Started";