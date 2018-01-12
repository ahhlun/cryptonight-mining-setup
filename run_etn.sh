#!/bin/bash
sudo su
cd /mnt/batch/tasks/startup/wd/xmr-stak/bin/
curl https://raw.githubusercontent.com/JonathanGawrych/cryptonight-mining-setup/master/config_template.txt > config.txt
sudo sed -i 's/POOLURLANDPORT/pool.etn.spacepools.org:7777/' config.txt
sudo sed -i 's/WALLETADDRESS/etnk5GXxGBMMge822J1Ufwic2F1dbYDTd1fx3iY16QWRT48SUHcXcWGQaTyJsjXNtSZ6ymZhYhBXkPtuHtXGymXd5NrceWiYUm/' config.txt
sudo sed -i 's/WORKERSEPERATOR/@/' config.txt
NODEIDSTRIP=$(sed 's/-[^_]*$//' <<< "$AZ_BATCH_NODE_ID")
NODEIDSTRIP="${NODEIDSTRIP:4}"
NODEIDSTRIP="${NODEIDSTRIP/_/N}"
sed -i "s/WORKERID/$NODEIDSTRIP/" config.txt
sudo sed -i 's/USENICEHASH/false/' config.txt
rm -f status.log
./xmr-stak
