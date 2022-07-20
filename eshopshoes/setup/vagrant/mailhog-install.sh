#!/bin/bash

## Install mailhog
wget https://github.com/mailhog/MailHog/releases/download/v1.0.1/MailHog_linux_amd64
sudo chmod +x MailHog_linux_amd64
sudo mv MailHog_linux_amd64 /usr/local/bin/mailhog
cat << EOF > /etc/systemd/system/mailhog.service
[Unit]
Description=MailHog for local

[Service]
Type=oneshot
RemainAfterExit=yes
ExecStart=/usr/local/bin/mailhog

[Install]
WantedBy=multi-user.target
EOF

## Install mhsendmail
wget https://github.com/mailhog/mhsendmail/releases/download/v0.2.0/mhsendmail_linux_amd64
sudo chmod +x mhsendmail_linux_amd64
sudo mv mhsendmail_linux_amd64 /usr/local/bin/mhsendmail