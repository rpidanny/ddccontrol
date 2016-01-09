#!/bin/bash

sudo apt-get install -y i2c-dev
sudo apt-get install -y xbacklight

wget http://ftp.cn.debian.org/debian/pool/main/d/ddccontrol-db/ddccontrol-db_20061014-4_all.deb
sudo dpkg -i ddccontrol-db_20061014-4_all.deb