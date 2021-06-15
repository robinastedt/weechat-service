#!/bin/sh

echo 'weechat.service' | sudo cpio -p --owner root:root /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable weechat.service
sudo systemctl start weechat.service