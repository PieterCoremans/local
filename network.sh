#!/bin/bash

network() {
        wire="$(ip a | grep 'eth0\|enp' | grep inet | wc -l)"
        wifi="$(ip a | grep wlan  | grep inet | wc -l)"

if [ $wire = 1 ]; then 
        echo "Ether"
elif [ $wifi = 1 ]; then 
        echo "Wifi"
else
        echo "No int"
fi
}

echo "$(network)"
