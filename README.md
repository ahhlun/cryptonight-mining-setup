# Cryptonight Mining Setup

A few setup scripts to run cryptonight miners. The script is intended to run on an Azure start task. If you are adapting this to your own mining camp, you should inspect each script and replace my address with your own - but I wouldn't mind if you kept it the same :)

### Machine Setup & Run

Give the system you are running doesn't support bash, but only command + arguments, here's how to get and execute the setup & run.

#### Monero

```
bash -c "bash <(curl https://raw.githubusercontent.com/ahhlun/cryptonight-mining-setup/master/xmr_stak_setup.sh)"
```

#### Electroneum

```
bash -c "bash <(curl https://raw.githubusercontent.com/ahhlun/cryptonight-mining-setup/master/etn_stak_setup.sh)"
```

#### Sumokoin

```
bash -c "bash <(curl https://raw.githubusercontent.com/ahhlun/cryptonight-mining-setup/master/sumo_stak_setup.sh)"
```

#### Nicehash

```
bash -c "bash <(curl https://raw.githubusercontent.com/ahhlun/cryptonight-mining-setup/master/nice_stak_setup.sh)"
```
