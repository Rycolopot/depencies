#!/bin/sh
#
# Copyright (C) 2022 Rycolopot <rycolopot@gmail.com>
#
# Distributed under terms of the MIT license.
#

echo -n "masukkan user linux anda : "
read user

echo "install maven"
mkdir -p /home/$user/programming/build-tool/apache-maven
wget http://mirror.wanxp.id/apache/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz
tar -xvzf apache-maven-3.3.9-bin.tar.gz
rm apache-maven-3.3.9-bin.tar.gz
mv apache-maven-3.3.9/* /home/$user/programming/build-tool/apache-maven/
rmdir apache-maven-3.3.9/

echo "membuat file environment"
touch environment

echo "membuat path maven"
echo "M2_HOME=/home/$user/programming/build-tool/apache-maven" | tee -a /home/$user/environment

echo "copy file environment"
sudo cp environment /etc/environment

echo "update aplikasi"
sudo apt-get update

echo "upgrade aplikasi"
sudo apt-get upgrade -y

echo "dist upgrade aplikasi"
sudo apt-get dist-upgrade -y
