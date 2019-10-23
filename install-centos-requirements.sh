#!/usr/bin/env bash
sudo yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
sudo yum install -y python-pip
sudo pip install --upgrade awscli
sudo yum install -y container-selinux
sudo yum install updates