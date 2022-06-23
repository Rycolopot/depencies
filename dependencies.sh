
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
echo " seperti biasa di update dulu ya bang biar gak eror nanti "
echo -n " klik enter aja bang 😂 !"
read user
echo
echo -e "\e[1m\e[32m1. Updating packages... \e[0m" && sleep 1
sudo apt update && sudo apt upgrade -y

echo -e "\e[1m\e[32m2. Installing dependencies... \e[0m" && sleep 1
sudo apt install curl build-essential git wget jq make gcc tmux -y
echo


echo -e "\e[1m\e[32m3. Downloading and building binaries... \e[0m" && sleep 1
cd $HOME && rm $HOME/sei-chain -rf
git clone https://github.com/sei-protocol/sei-chain.git && cd $HOME/sei-chain
git checkout 1.0.4beta
make install
mv ~/go/bin/seid /usr/local/bin/seid
systemctl restart seid && journalctl -fu seid -o cat
