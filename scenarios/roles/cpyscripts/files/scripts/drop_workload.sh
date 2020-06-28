#!/bin/bash

iptables -A INPUT -m conntrack --ctstate ESTABLISHED,RELATED -j ACCEPT

iptables -A INPUT -p tcp --dport ssh -j ACCEPT

iptables -A INPUT -p icmp -j ACCEPT

iptables -P INPUT DROP