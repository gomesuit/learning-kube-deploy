#!/bin/sh

#curl -fsSL https://get.docker.com/ | sh
yum install -y docker
systemctl start docker
systemctl enable docker

git clone https://github.com/kubernetes/kube-deploy
cd kube-deploy/docker-multinode
./master.sh

