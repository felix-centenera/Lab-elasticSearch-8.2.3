Deploy a Cluster of Elasticsearch 3 nodes HA:
============================================


Description
--------------------------------
* añsldkadsas


Tested under the next Configuration
--------------------------------
Host Fedora release 29

VirtualBox 6.0.4

Vagrant version: Installed Version: 2.2.4

    Vagrant  plugins:

        vagrant-disksize (0.1.3)

        vagrant-hostmanager (1.8.9)

        vagrant-persistent-storage (0.0.44)

        vagrant-share (1.1.9)

    Vagrant box list:

        centos/7  (virtualbox, 1902.01)
        CentOS Linux release 7.6.1810 (Core)

Infrastructure
--------------------------------
3 master nodes.

    master-one (Bastion node)

    master-two

    master-three


Details
--------
Users Virtual Machine:

    user: root

    password: vagrant

    user: vagrant

    password: vagrant



Download the project
-----------------------------------------
```
git clone  https://github.com/felix-centenera/OKD3.11_CentOS7.5_CRS.git
```
Generate VirtualBox Machines with Vagrant
-----------------------------------------
```
cd vagrant

vagrant up
```
Login in the bastion
-----------------------------------------
```
vagrant ssh master-one-okd11
```
Prepare the bastion node
-----------------------------------------






