# OpenVPN-Activity
Just a very simple script that checks who's Connected to the VPN server. 

Good to have if you are doing server maintenance and dont want to restart server while someone is using it.

## How-To
Just place the script in /bin/
do a: sudo chmod +x /bin/ovpn-activity

List active users:
$ ovpn-activity 

monitor active users with a intervall of 30 seconds (default intervall is 2 seconds)
$ ovpn-activity view 30
