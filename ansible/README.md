# Ansible

# Pre-requirements
docker run --rm -it -v $(pwd):/ansible -v $(pwd)/ansible.cfg:/etc/ansible/ansible.cfg --entrypoint ansible-galaxy acherlyonok/ansible:latest install --force -r /ansible/requirements.yml

docker run --rm -it -v $(pwd):/ansible acherlyonok/ansible:latest -i /ansible/inventories/hosts.yml /ansible/main.yml -vv

docker run --rm -it -v /mnt/host_home/.ssh/:/root/.ssh/:ro -v $(pwd):/ansible acherlyonok/ansible:latest -i /ansible/hosts.yml /ansible/main.yml -vv

# Debug
docker run --rm -it -v $(pwd):/ansible --entrypoint /bin/bash acherlyonok/ansible:latest

# Version
docker run --rm -it acherlyonok/ansible:latest --version
