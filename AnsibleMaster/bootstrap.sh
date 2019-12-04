#!/usr/bin/env bash
     apt-get update && apt-get upgrade -y
     apt-add-repository ppa:ansible/ansible
     apt-get update && apt-get install ansible -y
     exit 0