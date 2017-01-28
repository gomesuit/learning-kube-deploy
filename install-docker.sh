#!/bin/sh

curl -fsSL https://get.docker.com/ | sh

yum downgrade -y docker-engine-1.12.6-1.el7.centos

systemctl enable docker
systemctl start docker

usermod -a -G docker vagrant

