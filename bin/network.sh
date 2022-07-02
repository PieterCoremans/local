#!/bin/bash

network() {
        wire="$(nmcli device status | grep ethernet | grep connected | wc -l)"
        wifi="$(nmcli device status | grep wifi  | grep conected | wc -l)"

if [ $wire = 1 ]; then 
        echo "Ethernet"
elif [ $wifi = 1 ]; then 
        echo "Wifi"
else
        echo "No internet"
fi
}

echo "$(network)"
