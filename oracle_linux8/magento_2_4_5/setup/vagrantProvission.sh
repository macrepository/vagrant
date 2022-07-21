#!/bin/bash

# Start setup
. /var/ssh/setup/tools/start.sh

# Install PHP 8.1
. /var/ssh/setup/tools/php81.sh

# Install Apache 2.4.37
. /var/ssh/setup/tools/apache.sh

# Install mysql 8.0
. /var/ssh/setup/tools/mysqld80.sh

# Intall elasticsearch 7.17.5
. /var/ssh/setup/tools/elasticsearch.sh

# Set custom server configurations
. /var/ssh/setup/tools/custom-server-configuration.sh

# End setup