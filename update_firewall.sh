#!/bin/sh
systemctl start firewalld
#iptables -F
firewall-cmd --permanent --zone=public --add-port="1719/udp"
firewall-cmd --permanent --zone=public --add-port="1720/tcp"
firewall-cmd --permanent --zone=public --add-port="3478/udp"
firewall-cmd --permanent --zone=public --add-port="3479/udp"
firewall-cmd --permanent --zone=public --add-port="5002/tcp"
firewall-cmd --permanent --zone=public --add-port="5003/udp"
firewall-cmd --permanent --zone=public --add-port="25080/udp"
firewall-cmd --permanent --zone=public --add-port="25060/udp"
firewall-cmd --permanent --zone=public --add-port="5070/udp"
firewall-cmd --permanent --zone=public --add-port="25080/tcp"
firewall-cmd --permanent --zone=public --add-port="25060/tcp"
firewall-cmd --permanent --zone=public --add-port="5070/tcp"
firewall-cmd --permanent --zone=public --add-port="8021/tcp"
firewall-cmd --permanent --zone=public --add-port="16384-32768/udp"
firewall-cmd --reload
systemctl restart firewalld
