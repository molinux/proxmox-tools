#!/bin/bash -   
#title          :proxmox-ct-template-prepare.sh
#description    :Script to prepare a proxmox container before transform it in a CT Template
#author         :Marcus Molinero
#date           :20231009
#version        :0.0.1  
#usage          :./proxmox-ct-template-prepare.sh
#notes          :       
#bash_version   :4.4.23(1)-release
#============================================================================

echo "Digite o nome de usuario: "
read -r USER
adduser "$USER"
usermod -aG sudo "$USER"

apt-get update
apt-get upgrade
apt autoremote
apt clean

# remove ssh host keys
rm /etc/ssh/ssh_host_*

# truncate the machine-id file
truncate -s 0 /etc/machine-id

# remove ip addresses; change enp0s3 to your own interface name
ip addr flush dev enp0s3