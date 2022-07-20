#!/bin/bash

## phpmyAdmin installation
sudo yum install epel-release
sudo yum -y install phpmyadmin
sudo sed -i 's/Require ip 127.0.0.1/Require all granted/g' /etc/httpd/conf.d/phpMyAdmin.conf
