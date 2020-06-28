# BabaHakki

Baba Hakki was a legend club president and football player of BEŞİKTAŞ.

This tool developing to test and observe failover and self healing behaviours of your Kubernetes cluster.

## WARNING
This is Not a Production Grade Tool!
DO NOT TRY ON PRODUCTION CLUSTERS


## Scenarios:
* Drop Network access from clusters <b>drop_node</b>
* Corruption on etcd and master certiciates
* Remove static pod
* Disable ETCD port

## ROADMAP:
* Drop access AWS API and observe the non-scaled cluster.! 

## Local Config 
Local.yaml ansible playbook is developed for generate custom configs

```sh
ansible-playbook --connection=local  -i hosts.ini local.yaml
```


## Example Usage Config 
Local.yaml ansible playbook is developed for generate custom configs
an

```sh
ansible-playbook -i drop_nodes_hosts.ini -u ubuntu drop_nodes.yaml --private-key KEY
```

```sh
ansible-playbook -i hosts.ini -u ubuntu apply.yaml --private-key KEY
```