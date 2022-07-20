#!/bin/bash

# Install mysqld
sudo rpm -Uvh https://repo.mysql.com/mysql80-community-release-el7-3.noarch.rpm
sudo sed -i 's/enabled=1/enabled=0/' /etc/yum.repos.d/mysql-community.repo
sudo rpm --import https://repo.mysql.com/RPM-GPG-KEY-mysql-2022
sudo yum --enablerepo=mysql80-community -y install mysql-community-server