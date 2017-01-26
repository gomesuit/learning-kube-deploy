#!/bin/sh

if [ $# -ne 1 ]; then
  echo "usage : $0 [worker ip]"
  exit 1
fi

WORKER_IP=$1

#curl -fsSL https://get.docker.com/ | sh

git clone https://github.com/kubernetes/kube-deploy
cd kube-deploy/docker-multinode
export MASTER_IP=192.168.33.10
export IP_ADDRESS=$WORKER_IP
./worker.sh

