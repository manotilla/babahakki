#!/bin/bash
LABEL=$1
LABEL_VALUE=$2

NODES=$(kubectl get nodes --show-labels |grep "${LABEL}=${LABEL_VALUE}"|awk '{print $1}')

echo """
[drop_nodes]
${NODES}
""" >> drop_nodes_hosts.ini