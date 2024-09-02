#!/bin/bash
screen -dmS badvpn2 /bin/badvpn-udpgw --listen-addr 127.0.0.1:7300 --max-clients 1000 --max-connections-for-client 100
screen -dmS pydic-80 python /etc/VPS-MX/protocolos/python.py 80
sudo systemctl stop apache2
exit 0
#sudo systemctl enable vps-fix.service
#sudo systemctl start vps-fix.service
