#!/bin/bash -   
#title          :proxmox-ct-postinstall.sh
#description    :Post installation actions at Proxmox Container
#author         :Marcus Molinero aka Molinux (molinuxbr@gmail.com)
#date           :20231009
#version        :0.0.1  
#usage          :./proxmox-ct-postinstall.sh
#notes          :       
#bash_version   :4.4.23(1)-release
#============================================================================

dpkg-reconfigure openssh-server
