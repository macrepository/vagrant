#!/bin/bash

## Install php 7.4
sudo yum -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
sudo yum -y install https://rpms.remirepo.net/enterprise/remi-release-7.rpm
sudo yum -y install yum-utils
sudo yum-config-manager --enable remi-php74
sudo yum -y update
sudo yum -y install php php-cli php-fpm php-mysqlnd php-devel php-mcrypt php-xml php-pear php-bcmath php-ctype php-curl php-dom php-fileinfo php-gd php-hash php-iconv php-intl php-json php-libxml php-mbstring php-openssl php-pcre php-pdo_mysql php-simplexml php-soap php-sockets php-sodium php-xmlwriter php-xsl php-zip php-spl php-opcache