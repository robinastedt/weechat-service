#!/bin/sh

if ! command -v screen &> /dev/null
then
    echo "Please install screen"
    exit 1
fi

if ! command -v weechat &> /dev/null
then
    echo "Please install weechat"
    exit 1
fi

echo 'weechat.service' | sudo cpio -p --owner root:root /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable weechat.service
sudo systemctl start weechat.service