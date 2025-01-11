#!/bin/bash

echo 'start containers'
docker run --rm --name "ubuntu" -d pycontribs/ubuntu:latest sleep 3600
docker run --rm --name "centos7" -d centos/python-38-centos7:20210726-fad62e9 sleep 3600
docker run --rm --name "fedora" -d pycontribs/fedora:latest sleep 3600
docker ps
echo 'start playbook'
ansible-playbook site.yml -i ./inventory/prod.yml --ask-vault-password
echo 'stop containers'
docker stop ubuntu
docker stop centos7
docker stop fedora