FROM centos:centos7.6.1810

RUN yum update -y && \
    yum install -y epel-release && \
    yum install -y python-pip python-devel && \
    yum install -y gcc openssl-devel rsync make file autoconf automake libtool && \
    yum clean all

RUN pip install -U pip setuptools && \
    pip install requests termcolor jmespath jq

RUN pip install ansible==2.6.12 ansible-modules-hashivault docker-py boto boto3
RUN pip install awscli --upgrade --user


ADD ansible.cfg /etc/ansible/ansible.cfg

ENV ANSIBLE_LOCAL_TEMP=/tmp
ENV ANSIBLE_FORCE_COLOR=true
ENV PYTHONUNBUFFERED=1

ENTRYPOINT ["/usr/bin/ansible-playbook"]
CMD ["--version"]