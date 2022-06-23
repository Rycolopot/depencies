#!/bin/sh
#
# Copyright (C) 2022 Rycolopot <rycolopot@gmail.com>
#
# Distributed under terms of the MIT license.
#


echo " 📌 Jangan Lupa di follow biar semangat bantu kalian 😅"
echo " 📌 Twitter  : @rehan_ssf"
echo " 📌 Telegram : @paperhang"
echo
echo " seperti biasa di update dlu ya bang biar gak eror nanti "
echo -n " ketik aja bebas bang 😂 : "
read user
echo
sudo apt update && sudo apt upgrade -y
sudo apt install curl build-essential git wget jq make gcc tmux -y
