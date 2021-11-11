#!/bin/bash

# Installing Jenkins and Ansible

sudo yum install wget -y
wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins.io/redhat/jenkins.repo
rpm --import http://pkg.jenkins.io/redhat/jenkins.io.key
yum install jenkins -y
yum install java -y
systemctl start jenkins
chkconfig jenkins on
sudo yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
sudo yum install python python-devel python-pip openssl ansible -y
ansible --version