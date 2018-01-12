#!/bin/bash
sudo su
cd /mnt/batch/tasks/startup/wd/xmr-stak/bin/
curl https://raw.githubusercontent.com/JonathanGawrych/cryptonight-mining-setup/master/config_template.txt > config.txt
sudo sed -i 's/POOLURLANDPORT/cryptonight.usa.nicehash.com:3355/' config.txt
sudo sed -i 's/WALLETADDRESS/3Ka3BgD6DyHhse4HdcSfqxAsptKaXN3LhF/' config.txt
sudo sed -i 's/WORKERSEPERATOR/./' config.txt
NODEIDSTRIP=$(sed 's/-[^_]*$//' <<< "$AZ_BATCH_NODE_ID")
NODEIDSTRIP="${NODEIDSTRIP:4}"
NODEIDSTRIP="${NODEIDSTRIP/_/N}"
sed -i "s/WORKERID/$NODEIDSTRIP/" config.txt
sed -i 's/USENICEHASH/true/' config.txt
rm -f status.log
./xmr-stak
