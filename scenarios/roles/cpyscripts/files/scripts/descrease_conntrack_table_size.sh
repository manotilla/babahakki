#!/bin/bash
RATE=100
CONN_TABLE_SIZE=$1

for i in {1..5}
do 
    RATE="$((${RATE}*10))"

    CONN_TABLE_SIZE="$((${CONN_TABLE_SIZE}-${RATE}))"

    sysctl -w net.netfilter.nf_conntrack_max=${CONN_TABLE_SIZE}
    sleep 200

done