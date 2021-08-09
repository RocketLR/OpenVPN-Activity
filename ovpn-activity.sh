#!/bin/bash
# Made By RocketLR / Androo

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

####### FUNCTIONS ########

act_check () {
sudo echo "looking for active clients"
#Look for Virtual IPs that are online and save them.
activeIPs=$(fping -ag 10.8.0.0/24)
i=0
for ip in $activeIPs; do
        if [[ $i -eq 0 ]]
        then
                i=$i+1
                continue
        fi

        echo " -- Active --"
        echo "| "$(sudo grep '/.*Learn: '$ip /var/log/openvpn.log | head -1 | sed 's/\/.*$//')
        echo "| ip: $ip"
        echo " ------------"
        echo " "
done
}

##########################


if [ "$1" = "view" ] ; then
	echo "view is set"
	if [ -z "$2" ] ; then
		watch "$SCRIPT_DIR""/ovpn-activity"
	else
	watch -n $2  "$SCRIPT_DIR""/ovpn-activity"
	fi
else
	act_check
fi


exit 0
