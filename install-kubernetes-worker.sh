#!/bin/sh

curl -fsSL https://get.docker.com/ | sh

git clone https://github.com/kubernetes/kube-deploy
cd kube-deploy/docker-multinode
export MASTER_IP=192.168.33.10
./worker.sh

