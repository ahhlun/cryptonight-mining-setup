#!/bin/bash
sudo su
cd /mnt/batch/tasks/startup/wd/xmr-stak/bin/
curl https://raw.githubusercontent.com/JonathanGawrych/cryptonight-mining-setup/master/config_template.txt > config.txt
sudo sed -i 's/POOLURLANDPORT/mine.sumo.fairpool.xyz:5555/' config.txt
sudo sed -i 's/WALLETADDRESS/Sumoo1oyPB3Ksk4Um1rWk5G7HLk2EGKsH1LJi3tRUy5NHMgfyXcLyzrXLiUKcGCWzw42atGWJ7UtHerDdo7t65rLgYa2u2ZUgxv/' config.txt
sudo sed -i 's/WORKERSEPERATOR/+/' config.txt
NODEIDSTRIP=$(sed 's/-[^_]*$//' <<< "$AZ_BATCH_NODE_ID")
NODEIDSTRIP="${NODEIDSTRIP:4}"
NODEIDSTRIP="${NODEIDSTRIP/_/N}"
sed -i "s/WORKERID/$NODEIDSTRIP/" config.txt
sudo sed -i 's/USENICEHASH/false/' config.txt
rm -f status.log
./xmr-stak
