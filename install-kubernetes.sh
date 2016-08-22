#!/bin/sh

#curl -fsSL https://get.docker.com/ | sh
yum install -y docker
systemctl start docker
systemctl enable docker

git clone https://github.com/kubernetes/kube-deploy
cd kube-deploy/docker-multinode
./master.sh



#export MASTER_IP=192.168.33.10

git clone https://github.com/kubernetes/kube-deploy
cd kube-deploy/docker-multinode
./worker.sh




#yum install -y kubernetes-client

#### IMPORTANT: This dns manifest is for v1.2.x only! With v1.3, dns is deployed automatically
