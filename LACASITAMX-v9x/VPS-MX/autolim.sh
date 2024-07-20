#!/bin/bash
fecha=`date`;
apt update &>/dev/null
apt list --upgradable &>/dev/null
apt upgrade -y &>/dev/null
apt autoremove -y &>/dev/null
apt-get autoclean -y &>/dev/null
apt-get clean -y &>/dev/null
echo 3 > /proc/sys/vm/drop_caches &> /dev/null 
sysctl -w vm.drop_caches=3 &> /dev/null 
swapoff -a && swapon -a &> /dev/null
v2ray clear &>/dev/null
systemctl restart stunnel4 &>/dev/null
service stunnel4 restart &>/dev/null
echo "$fecha - limpieza realizada con exito" >> $HOME/limpieza.log 