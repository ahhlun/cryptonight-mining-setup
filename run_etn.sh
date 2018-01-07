#!/bin/bash
sudo su
hostname
cd ../../../../../startup/wd/xmr-stak/bin/
curl https://raw.githubusercontent.com/JonathanGawrych/cryptonote-mining-setup/master/config_template.txt > config.txt
sudo sed -i 's/POOLURLANDPORT/pool.etn.spacepools.org:7777/' config.txt
sudo sed -i 's/WALLETADDRESS/etnk5GXxGBMMge822J1Ufwic2F1dbYDTd1fx3iY16QWRT48SUHcXcWGQaTyJsjXNtSZ6ymZhYhBXkPtuHtXGymXd5NrceWiYUm/' config.txt
sudo sed -i 's/WORKERSEPERATOR/@/' config.txt
sudo sed -i 's/HOSTNAME/'"`hostname -s`"'/' config.txt
rm -f xmr.log
./xmr-stak
