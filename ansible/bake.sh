#!/bin/bash

ansible_version=2.6.18

curl -O https://raw.githubusercontent.com/ansible/ansible/stable-2.6/examples/ansible.cfg
docker build --pull --no-cache -t acherlyonok/ansible:$ansible_version -t acherlyonok/ansible:latest .
docker push acherlyonok/ansible:$ansible_version && docker push acherlyonok/ansible:latest
