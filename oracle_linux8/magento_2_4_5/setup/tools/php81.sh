#!/bin/bash

#Enable remi's repository
sudo dnf install https://rpms.remirepo.net/enterprise/remi-release-8.rpm

#Enable PHP 8.1
sudo dnf -y module reset php
sudo dnf -y module enable php:remi-8.1

#Install php
sudo dnf -y install php