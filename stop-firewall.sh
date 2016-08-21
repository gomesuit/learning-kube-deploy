#!/bin/sh

systemctl disable firewalld
systemctl stop firewalld

setenforce 0
