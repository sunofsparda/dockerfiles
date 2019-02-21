# Ansible

docker run --rm -it -v $(pwd):/ansible acherlyonok/ansible:latest '/ansible/main.yml' '-vv'
docker run --rm -it -v $(pwd):/ansible --entrypoint /bin/bash acherlyonok/ansible:latest

docker run --rm -it -v /mnt/host_home/.ssh/:/root/.ssh/:ro -v $(pwd):/ansible acherlyonok/ansible:latest -i /ansible/hosts /ansible/main.ymle