# OpenVPN-Activity
Just a very simple script that checks who's Connected to the VPN server. 

Good to have if you are doing server maintenance and dont want to restart server while someone is using it.

## Requirements

For the script to work you need these two things which migh or might not already exists in your server. (will make script automatically check for this someday)

1. If missing, add "log-append /var/log/openvpn.log" to /etc/openvpn/server.conf
2. Make sure that fping is installed i.e "sudo apt install fping".

## How-To

List active users:
```
./ovpn-activity.sh 
```

monitor active users with a intervall of 30 seconds (default intervall is 2 seconds):
```
./ovpn-activity.sh view 30
```
