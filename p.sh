#!/bin/sh
#
# Copyright (C) 2022 Rycolopot <rycolopot@gmail.com>
#
# Distributed under terms of the MIT license.
#

sudo apt update && sudo apt upgrade -y

sudo apt install curl build-essential git wget jq make gcc tmux -y


echo "install GO"
ver="1.18.2"
cd $HOME
wget "https://golang.org/dl/go$ver.linux-amd64.tar.gz"
rm -rf /usr/local/go
tar -C /usr/local -xzf "go$ver.linux-amd64.tar.gz"
rm "go$ver.linux-amd64.tar.gz"
echo "export PATH=$PATH:/usr/local/go/bin:$HOME/go/bin" >> ~/.bash_profile
source ~/.bash_profile
