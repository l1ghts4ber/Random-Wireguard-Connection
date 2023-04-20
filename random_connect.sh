#!/usr/bin/env bash

# build an array with all .conf files at /etc/wireguard 
configs=(/etc/wireguard/*.conf)

# choose a random .config file
random_config=${configs[$RANDOM % ${#configs[@]}]}

# connect with wg-quick 
sudo wg-quick up $random_config
