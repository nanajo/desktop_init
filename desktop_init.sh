#!/bin/sh
BASEDIR=$(cd $(dirname ${0});pwd)
echo $BASEDIR

# Get AUR Helper
git clone https://github.com/kewlfft/ansible-aur.git ~/.ansible/plugins/modules/aur

# Install AUR packages
ansible-playbook -i localhost, -c local ${BASEDIR}/ansible/aur.yml

# Install AUR packages
ansible-playbook -i localhost, -c local ${BASEDIR}/ansible/config.yml