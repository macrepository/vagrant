#!/bin/bash

## Initialize variables
. $('pwd')/setup/config.sh

if [[ ! -d htdocs ]]
then
    mkdir htdocs
    echo "Created htdocs folder."
    cat << EOF >> htdocs/index.php
<?php
    
phpinfo();
EOF
fi

chmod +x setup/*

setup_synch_folder=setup
server_synch_folder=/var/www/setup
modserver_env_path=${server_env_path//[\/]/"\/"}
modserver_synch_folder=${server_synch_folder//[\/]/"\/"}

cp ./Vagrantfile.orig ./Vagrantfile
sed -i 's/host: 9999/host: '$host_port'/g' ./Vagrantfile
sed -i 's/ip: "127.0.0.1", bridge: "eno1"/ip: "'$host'", bridge: "'$bridge'"/g' ./Vagrantfile
sed -i 's/synch_folder/'$synch_folder'/g' ./Vagrantfile
sed -i "s/server_env_path/$modserver_env_path/g" ./Vagrantfile
sed -i 's/setup/'$setup_synch_folder'/g' ./Vagrantfile
sed -i "s/setup_server_path/$modserver_synch_folder/g" ./Vagrantfile
sed -i 's/vbname/'$vbname'/g' ./Vagrantfile

vagrant up --provision