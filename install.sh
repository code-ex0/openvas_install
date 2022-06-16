#!/bin/bash

function myOpenVasinstaller(){

echo apt update
echo apt upgrade
echo apt-get install doxygen -y
echo apt-get install git -y
echo git clone https://github.com/redis/hiredis
echo git clone https://github.com/greenbone/gvm-libs/
echo git clone https://github.com/greenbone/openvas-scanner/
echo apt-get install gcc -y
echo apt-get install cmake -y
echo apt-get install pkg-config -y
echo apt-get install libglib2.0-dev -y
echo apt-get install libgpgme-dev -y
echo apt-get install libgnutls28-dev -y
echo apt-get install uuid-dev -y
echo apt-get install libssh-gcrypt-dev -y
echo apt-get install libhiredis-dev -y
echo apt-get install libxml2-dev -y
echo apt-get install libpcap-dev -y
echo apt-get install libnet1-dev -y
echo apt-get install libldap2-dev -y
echo apt-get install libradcli-dev -y
echo apt-get install json-glib-1.0 -y
echo apt-get install libjson-glib-dev -y
echo apt-get install libbsd-dev -y
echo apt-get install libpaho-mqtt-dev -y
echo apt-get install bison -y
echo apt-get install libksba-dev -y


echo cd hiredis cmake .
echo make install

echo cd ../
echo cd gvm-libs

echo cmake .
echo make install

echo cd ../
echo cd openvas-scanner
echo cmake .
echo make install

echo export PKG_CONFIG_PATH=/home/test/pkgconfig:$PKG_CONFIG_PATH
echo mkdir build
echo cd build
}

myOpenVasinstaller
