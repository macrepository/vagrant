#!/usr/bin/env bash

# Required Tools
echo "Installing Required Tools"
. /var/www/setup/vagrant/required-tools.sh
echo "Installed Required Tools"

# Install httpd
echo "Installing httpd"
. /var/www/setup/vagrant/httpd-install.sh
echo "Installed httpd"

# Install php74
echo "Installing php"
. /var/www/setup/vagrant/php74-install.sh
echo "Installed php"

# Install mysql 8
echo "Installing mysql"
. /var/www/setup/vagrant/mysql-install.sh
echo "Installed mysql"

# Install elasticsearch
echo "Installing elasticsearch"
. /var/www/setup/vagrant/elasticsearch-install.sh
echo "Installed elasticsearch"

# Install mailhog
echo "Installing mailhog"
. /var/www/setup/vagrant/mailhog-install.sh
echo "Installed mailhog"

# phpmyadmin Installtion
echo "Installing phpmyadmin"
. /var/www/setup/vagrant/phpmyadmin.sh
echo "Installed phpmyadmin"

# Start server
echo "Starting Server..."
. /var/www/setup/vagrant/start-server.sh
echo "Server started!"

# Set Server Configurations
echo "Setting Up Server Configurations"
. /var/www/setup/vagrant/set-configuration.sh
echo "Done Setting Up Server"

# Mysql secure instllkation
echo "Setting up mysql secure installation"
. /var/www/setup/vagrant/mysqlsecure.sh

# Re-start server
echo "Re-starting Server..."
. /var/www/setup/vagrant/restart-server.sh
echo "Server started!"