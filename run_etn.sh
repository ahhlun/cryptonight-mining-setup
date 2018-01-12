#!/bin/bash
sudo su
cd /mnt/batch/tasks/startup/wd/xmr-stak/bin/
curl https://raw.githubusercontent.com/JonathanGawrych/cryptonight-mining-setup/master/config_template.txt > config.txt
sudo sed -i 's/POOLURLANDPORT/pool.etn.spacepools.org:7777/' config.txt
sudo sed -i 's/WALLETADDRESS/etnk5GXxGBMMge822J1Ufwic2F1dbYDTd1fx3iY16QWRT48SUHcXcWGQaTyJsjXNtSZ6ymZhYhBXkPtuHtXGymXd5NrceWiYUm/' config.txt
sudo sed -i 's/WORKERSEPERATOR/@/' config.txt
NODEIDSTRIP="${AZ_BATCH_NODE_ID//[^a-zA-Z0-9]/}"
NODEIDLIMIT="${NODEIDSTRIP:0:13}N${NODEIDSTRIP:13:1}"
sed -i "s/WORKERID/$NODEIDLIMIT/" config.txt
sudo sed -i 's/USENICEHASH/false/' config.txt
rm -f status.log
./xmr-stak
