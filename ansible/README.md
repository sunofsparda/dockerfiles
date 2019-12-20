## How to build docker image

1. Edit `ansible_version` in `bake.sh`
2. Run `bake.sh`

## How to use
### Ansible

### Version
```sh
docker run --rm -it acherlyonok/ansible:latest --version
```

### Pre-requirements
```sh
docker run --rm -it -v $(pwd):/ansible -v $(pwd)/ansible.cfg:/etc/ansible/ansible.cfg --entrypoint ansible-galaxy acherlyonok/ansible:latest install --force -r /ansible/requirements.yml
```

### Run
```sh
docker run --rm -it -v $(pwd):/ansible acherlyonok/ansible:latest -i /ansible/inventories/hosts.yml /ansible/main.yml -vv

docker run --rm -it -v $HOME/.ssh/:/root/.ssh/:ro -v $(pwd):/ansible acherlyonok/ansible:latest -i /ansible/hosts.yml /ansible/main.yml -vv
```

### Debug
```sh
docker run --rm -it -v $(pwd):/ansible --entrypoint /bin/bash acherlyonok/ansible:latest
```
