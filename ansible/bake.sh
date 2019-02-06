#!/bin/bash

if [ "$1" == "build" ]; then
    curl -O https://raw.githubusercontent.com/ansible/ansible/stable-$2/examples/ansible.cfg
    sed -i -e 's/#retry_files_enabled = False/retry_files_enabled = False/g' ./ansible.cfg
    sed -i -e 's/#host_key_checking = False/host_key_checking = False/g' ./ansible.cfg
    docker build -t acherlyonok/ansible:2.6.12 .
    exit
fi