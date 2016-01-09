#!/bin/bash

sudo apt-get install -y i2c-dev
sudo apt-get install -y xbacklight

wget http://ftp.cn.debian.org/debian/pool/main/d/ddccontrol-db/ddccontrol-db_20061014-4_all.deb
sudo dpkg -i ddccontrol-db_20061014-4_all.deb

MACHINE_TYPE=`uname -m`
if [ ${MACHINE_TYPE} == 'x86_64' ]; then
  # 64-bit stuff here
  echo "64-bit System"
  wget http://ftp.cn.debian.org/debian/pool/main/libx/libxml2/libxml2_2.9.2+dfsg1-3_amd64.deb
  wget http://ftp.cn.debian.org/debian/pool/main/p/pciutils/libpci3_3.2.1-3_amd64.deb
  wget http://ftp.cn.debian.org/debian/pool/main/d/ddccontrol/libddccontrol0_0.4.2-11_amd64.deb
  wget http://ftp.cn.debian.org/debian/pool/main/d/ddccontrol/ddccontrol_0.4.2-11_amd64.deb
  sudo dpkg -i libxml2_2.9.2+dfsg1-3_amd64.deb
  sudo dpkg -i libpci3_3.2.1-3_amd64.deb
  sudo dpkg -i libddccontrol0_0.4.2-11_amd64.deb
  sudo dpkg -i ddccontrol_0.4.2-11_amd64.deb
  rm libxml2_2.9.2+dfsg1-3_amd64.deb
  rm libpci3_3.2.1-3_amd64.deb
  rm libddccontrol0_0.4.2-11_amd64.deb
  rm ddccontrol_0.4.2-11_amd64.deb
else
  # 32-bit stuff here
  echo "32-bit System"
  wget http://ftp.cn.debian.org/debian/pool/main/libx/libxml2/libxml2_2.9.2+dfsg1-3_i386.deb
  wget http://ftp.cn.debian.org/debian/pool/main/p/pciutils/libpci3_3.2.1-3_i386.deb
  wget http://ftp.cn.debian.org/debian/pool/main/d/ddccontrol/libddccontrol0_0.4.2-11_i386.deb
  wget http://ftp.cn.debian.org/debian/pool/main/d/ddccontrol/ddccontrol_0.4.2-11_i386.deb
  sudo dpkg -i libxml2_2.9.2+dfsg1-3_i386.deb
  sudo dpkg -i libpci3_3.2.1-3_i386.deb
  sudo dpkg -i libddccontrol0_0.4.2-11_i386.deb
  sudo dpkg -i ddccontrol_0.4.2-11_i386.deb
  rm libxml2_2.9.2+dfsg1-3_i386.deb
  rm libpci3_3.2.1-3_i386.deb
  rm libddccontrol0_0.4.2-11_i386.deb
  rm ddccontrol_0.4.2-11_i386.deb
fi

echo "Installation Successful!!"
echo ""
echo ""
echo "How To Use:"
echo "External Monitor : sudo ddccontrol -p -r 0x10 -w brightness"
echo "Laptop Display : xbacklight -set brightness"