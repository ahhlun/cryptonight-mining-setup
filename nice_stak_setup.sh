#!/bin/bash
sudo su
set -e
apt-get --assume-yes update
apt-get --assume-yes install libmicrohttpd-dev libssl-dev cmake build-essential libhwloc-dev screen git nano
sysctl -w vm.nr_hugepages=128
git clone https://github.com/fireice-uk/xmr-stak.git
cd xmr-stak/
echo -e "#pragma once\nconstexpr double fDevDonationLevel = 0;" > xmrstak/donate-level.hpp
cmake . -DCUDA_ENABLE=OFF -DOpenCL_ENABLE=OFF
make install
cd bin/
curl https://raw.githubusercontent.com/JonathanGawrych/cryptonight-mining-setup/master/host_to_id.sh > /etc/profile.d/host_to_id.sh
curl https://raw.githubusercontent.com/JonathanGawrych/cryptonight-mining-setup/master/cpu.txt > cpu.txt
curl https://raw.githubusercontent.com/JonathanGawrych/cryptonight-mining-setup/master/config_template.txt > config.txt
NODEIDSTRIP=$(sed 's/-[^_]*$//' <<< "$AZ_BATCH_NODE_ID")
NODEIDSTRIP="${NODEIDSTRIP:4}"
NODEIDSTRIP="${NODEIDSTRIP/_/N}"
sed -i "s/NODEID/$NODEIDSTRIP/g" /etc/profile.d/host_to_id.sh
sed -i 's/POOLURLANDPORT/cryptonight.usa.nicehash.com:3355/' config.txt
sed -i 's/WALLETADDRESS/3Ka3BgD6DyHhse4HdcSfqxAsptKaXN3LhF/' config.txt
sed -i 's/WORKERSEPERATOR/./' config.txt
sed -i "s/WORKERID/$NODEIDSTRIP/" config.txt
sed -i 's/USENICEHASH/true/' config.txt
./xmr-stak