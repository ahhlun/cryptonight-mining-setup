#!/bin/bash
sudo su
cd /mnt/batch/tasks/startup/wd/xmr-stak/bin/
curl https://raw.githubusercontent.com/JonathanGawrych/cryptonight-mining-setup/master/config_template.txt > config.txt
sudo sed -i 's/POOLURLANDPORT/pool.minexmr.com:7777/' config.txt
sudo sed -i 's/WALLETADDRESS/45VShUov9o2dKyyXAXxXZkL2LDb9mwcpoAAfPPjJHNKcADU8J6hq57ZiijB1DSGMfn3uJz5URn16TZGw9p74sKjoFRGDcJ1/' config.txt
sudo sed -i 's/WORKERSEPERATOR/./' config.txt
NODEIDSTRIP="${AZ_BATCH_NODE_ID//[^a-zA-Z0-9]/}"
NODEIDLIMIT="${NODEIDSTRIP:0:13}N${NODEIDSTRIP:13:1}"
sed -i "s/WORKERID/$NODEIDLIMIT/" config.txt
sudo sed -i 's/USENICEHASH/false/' config.txt
rm -f status.log
./xmr-stak
