# Ansible Master Server

----
## Vagrantfile for VirtualBox provisioning 
see [Vagrant: VirtualBox](https://www.vagrantup.com/docs/virtualbox/)

----
## Content
1. Ansible Master Server Vagrantfile.
2. bootstrap.sh script.

----
## Warning
These files are created *only* for Development and Staging environments. **Do not use in Production**.

----
## Usage
The Vagrantfile will spin up a VirtualBox VM with: 


     vb.name = "ansible-master"
     vb.memory = "1024"
     vb.cpus = 6 

Configure shared folders:
    
    config.vm.synced_folder ".", "/vagrant", 
    :mount_options => ["dmode=775,fmode=764"]

     config.vm.synced_folder "./data_private", 
    "/home/vagrant/data_private", :mount_options => 
    ["dmode=775,fmode=764"]

You will need to create data_private in your Vagrant Project folder to store the keys you will need to pass to your Ansible machine.

Right now the Box used is:

    config.vm.box = "bento/ubuntu-18.04"
    config.vm.box_version = "201910.20.0"

Bootstrap.sh will only update the system and install the Ansible repository and package + dependencies.

##### Happy #DevOps & #Coding to all !