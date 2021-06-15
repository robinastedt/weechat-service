#!/bin/sh

sudo systemctl stop weechat.service
sudo systemctl disable weechat.service
sudo rm /etc/systemd/system/weechat.service
sudo systemctl daemon-reload