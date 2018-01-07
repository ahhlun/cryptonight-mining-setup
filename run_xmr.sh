#!/bin/bash
sudo su
hostname
cd ../../../../../startup/wd/xmr-stak/bin/
curl https://raw.githubusercontent.com/JonathanGawrych/cryptonote-mining-setup/master/config_template.txt > config.txt
sudo sed -i 's/POOLURLANDPORT/pool.minexmr.com:7777/' config.txt
sudo sed -i 's/WALLETADDRESS/45VShUov9o2dKyyXAXxXZkL2LDb9mwcpoAAfPPjJHNKcADU8J6hq57ZiijB1DSGMfn3uJz5URn16TZGw9p74sKjoFRGDcJ1/' config.txt
sudo sed -i 's/WORKERSEPERATOR/./' config.txt
sudo sed -i 's/HOSTNAME/'"`hostname -s`"'/' config.txt
rm -f xmr.log
./xmr-stak
