#!/bin/bash
export CERT_FILE=$1

echo "Removing random certificates"

mv ${CERT_FILE} ${CERT_FILE}.bak

docker restart etcd