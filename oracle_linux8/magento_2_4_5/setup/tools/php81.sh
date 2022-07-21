#!/bin/bash

#Enable remi's repository
sudo dnf install https://rpms.remirepo.net/enterprise/remi-release-8.rpm

#Enable PHP 8.1
sudo dnf -y module reset php
sudo dnf -y module enable php:remi-8.1

#Install php and extensions
sudo dnf -y install php
sudo dnf -y install php81-php-{cli,fpm,mysqlnd,devel,mcrypt,xml,pear,memcache,redis,bcmath,ctype,curl,dom,fileinfo,gd,hash,iconv,intl,json,libxml,mbstring,openssl,pcre,pdo_mysql,simplexml,soap,sockets,sodium,tokenizer,xmlwriter,xsl,zip}
sudo dnf -y install libxml2
sudo dnf -y install openssl-devel