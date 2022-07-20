#!/bin/bash

sudo grep "A temporary password" /var/log/mysqld.log
sudo mysql_secure_installation