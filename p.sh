#!/bin/sh
#
# Copyright (C) 2022 Rycolopot <rycolopot@gmail.com>
#
# Distributed under terms of the MIT license.
#


echo "Jangan Lupa di bantu klik subscribe 😅"
echo "Twitter  : @rehan_ssf"
echo "Telegram : @paperhang"

echo -n "seperti biasa ketik yes untuk update/upgrade : "
read user



sudo apt update && sudo apt upgrade -y
sudo apt install curl build-essential git wget jq make gcc tmux -y
