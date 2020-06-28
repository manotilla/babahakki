#!/bin/bash

rm /etc/kubernetes/manifests/kube-apiserver.manifests
systemctl restart kubelet.service