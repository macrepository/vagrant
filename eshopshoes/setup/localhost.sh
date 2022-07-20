#!/bin/bash

. $('pwd')/setup/config.sh
echo '\n\n#Local Host Environment' >> /etc/hosts
echo $host'\t'$hostname >> /etc/hosts
