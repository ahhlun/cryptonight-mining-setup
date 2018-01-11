# Cryptonight Mining Setup

A few setup scripts to run cryptonight miners. Working directories are based off of my server setup. If you are adapting this to your own mining camp, you should inspect each script and ensure the `cd` to the working directory is appropiate for your system as well as replacing my address with your own - but I wouldn't mind if you kept it the same :)

### Machine Setup

Give the system you are running doesn't support bash, but only command + arguments, here's how to get and execute the setup.

```
bash -c "bash <(curl https://raw.githubusercontent.com/JonathanGawrych/cryptonight-mining-setup/master/xmr_stak_setup.sh)"
```

### Run Workers

Similarly, here's how to run each worker:

#### Monero

```
bash -c "bash <(curl https://raw.githubusercontent.com/JonathanGawrych/cryptonight-mining-setup/master/run_xmr.sh)"
```

#### Electroneum

```
bash -c "bash <(curl https://raw.githubusercontent.com/JonathanGawrych/cryptonight-mining-setup/master/run_etn.sh)"
```

#### Sumokoin

```
bash -c "bash <(curl https://raw.githubusercontent.com/JonathanGawrych/cryptonight-mining-setup/master/run_sumo.sh)"
```

#### Nicehash

```
bash -c "bash <(curl https://raw.githubusercontent.com/JonathanGawrych/cryptonight-mining-setup/master/run_nice.sh)"
```
