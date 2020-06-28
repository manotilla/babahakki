#!/bin/bash

export ETCD_PORT_1=$1
export ETCD_PORT_2=$2

iptables -A INPUT -i eth0 -p tcp --dport ${ETCD_PORT_1} -j DROP
iptables -A INPUT -i eth0 -p tcp --dport ${ETCD_PORT_2} -j DROP