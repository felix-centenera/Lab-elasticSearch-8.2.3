!/bin/bash

## Install Ansible in node bastion


yum update -y
yum upgrade -y
yum --enablerepo=extras install epel-release -y

sudo pip uninstall ansible || true
yum -y  install  pyOpenSSL python-pip python-dev sshpass python ansible 
#sudo mkdir -p /etc/ansible
sudo mkdir -p /opt/ansible
pip install --upgrade ansible 



sudo pip -H install --upgrade ansible 


#sudo mv /tmp/ansible.cfg /etc/ansible/
#sudo mv /tmp/ansible /root/

sudo mv /tmp/ansible  /opt/ansible

ssh-keygen -t rsa -N "" -f /root/.ssh/id_rsa

for host in elastic-one.192.168.1.210.nip.io \
            elastic-two.192.168.1.211.nip.io \
            elastic-three.192.168.1.212.nip.io; \
            do sshpass -f /tmp/password.txt ssh-copy-id -o "StrictHostKeyChecking no" -f $host;  \
            done