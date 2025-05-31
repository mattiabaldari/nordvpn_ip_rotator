#!/bin/bash

countries=$(nordvpn countries | tr , "\n" | shuf -n 1)
$(echo "$x" | awk '{print $1}')
random_country=$(echo "$countries" | awk '{print $1}')
# connect to that country
echo "Connecting to $random_country..."
nordvpn connect "$random_country"
