#!/bin/bash

# Start server httpd
sudo systemctl restart httpd
echo "httpd re-started OK";

# Start mysqld
sudo systemctl restart mysqld
echo "mysqld re-started OK";

# Start elasticsearch
sudo systemctl restart elasticsearch.service
echo "elasticsearch re-started OK";

# Start Mailhog
sudo systemctl restart mailhog.service &
echo "Mailhog re-started";
echo "Server Ready!!!";