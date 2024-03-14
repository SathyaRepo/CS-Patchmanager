#!/bin/bash

sudo apt-get install unattended-upgrades
sudo apt-get -s dist-upgrade | grep "^Inst" | grep -i securi | awk -F " " {'print $2'} | xargs sudo apt-get install -y
reboot
