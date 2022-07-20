#!/bin/bash

## Initialize variables
. /var/www/setup/config.sh

# Set Configurations
sudo sed -i 's/memory_limit = 128M/memory_limit = 2G/g' /etc/php.ini
sudo sed -i 's/;realpath_cache_size = 4096k/realpath_cache_size=10M/g' /etc/php.ini
sudo sed -i 's/;realpath_cache_ttl = 120/realpath_cache_ttl=7200/g' /etc/php.ini
sudo sed -i 's/sendmail_path = \/usr\/sbin\/sendmail -t -i/sendmail_path = \/usr\/local\/bin\/mhsendmail/g' /etc/php.ini
sudo sed -i 's/SELINUX=enforcing/SELINUX=disabled/g' /etc/selinux/config
#   sed -i 's/-Xms1g/-Xms512m/g' /etc/elasticsearch/jvm.options
#   sed -i 's/-Xmx1g/-Xmx512m/g' /etc/elasticsearch/jvm.options

#Set Permissions
sudo sed -i 's/User apache/User vagrant/g' /etc/httpd/conf/httpd.conf
sudo sed -i 's/Group apache/Group vagrant/g' /etc/httpd/conf/httpd.conf
sudo chown -R vagrant:vagrant /var/lib/php

sudo cat << EOF > /etc/httpd/conf.d/$vbname.conf
<VirtualHost *:80>
    ServerAdmin webmaster@localhost
    ServerName $hostname
    ServerAlias www.$hostname
    DocumentRoot $server_env_path
#    ErrorLog ${APACHE_LOG_DIR}/error.log
#    CustomLog ${APACHE_LOG_DIR}/access.log
    <Directory $server_env_path>
#        Options +FollowSymlinks
        AllowOverride All
        Require all granted
    </Directory>
</VirtualHost>
EOF