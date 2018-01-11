#!/bin/bash
sudo su
cd ../../../../../startup/wd/xmr-stak/bin/
curl https://raw.githubusercontent.com/JonathanGawrych/cryptonote-mining-setup/master/config_template.txt > config.txt
sudo sed -i 's/POOLURLANDPORT/mine.sumo.fairpool.xyz:5555/' config.txt
sudo sed -i 's/WALLETADDRESS/Sumoo1oyPB3Ksk4Um1rWk5G7HLk2EGKsH1LJi3tRUy5NHMgfyXcLyzrXLiUKcGCWzw42atGWJ7UtHerDdo7t65rLgYa2u2ZUgxv/' config.txt
sudo sed -i 's/WORKERSEPERATOR/+/' config.txt
NODEIDSTRIP="${AZ_BATCH_NODE_ID//[^a-zA-Z0-9]/}"
NODEIDLIMIT="${NODEIDSTRIP:0:13}N${NODEIDSTRIP:13:1}"
sed -i "s/WORKERID/$NODEIDLIMIT/" config.txt
sudo sed -i 's/USENICEHASH/false/' config.txt
rm -f xmr.log
./xmr-stak
