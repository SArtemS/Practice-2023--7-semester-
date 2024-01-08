#!/bin/bash
sudo apt purge ntp -y
sudo apt purge chrony -y
sudo timedatectl set-ntp true
sudo systemctl start systemd-timesyncd

sudo echo "NTP=ntp0.vniiftri.ru ntp1.vniiftri.ru ntp2.vniiftri.ru ntp3.vniiftri.ru" >> /etc/systemd/timesyncd.conf
sudo echo "FallbackNTP=ntp1.niiftri.irkutsk.ru" >> /etc/systemd/timesyncd.conf

echo "DONE"
