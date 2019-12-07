#!/usr/bin/env bash
     apt-get update && apt-get upgrade -y
	apt-get install nginx docker.io awscli -y
     cd ~
     curl --silent -L https://dl.google.com/go/go1.13.5.linux-amd64.tar.gz && tar -xvf go1.13.5.linux-amd64.tar.gz && mv go /usr/local
     printf '# Golang\nexport GOROOT=/usr/local/go\nexport GOPATH=$HOME/workspaces/go\nexport PATH=$GOPATH/bin:$GOROOT/bin:$PATH\n\n' >> .profile
     cd ~
     curl --silent -L https://github.com/docker/compose/releases/download/1.25.0/docker-compose-`uname -s`-`uname -m` -o docker-compose
     chmod +x docker-compose
     mv docker-compose /usr/local/bin
     curl --silent -L https://github.com/docker/machine/releases/download/v0.16.0/docker-machine-`uname -s`-`uname -m` -o docker-machine
     chmod +x docker-machine
     mv docker-machine /usr/local/bin/
     usermod -aG root vagrant
     usermod -aG docker vagrant
     curl -sL https://github.com/digitalocean/doctl/releases/download/v1.35.0/doctl-1.35.0-linux-amd64.tar.gz | tar -xzv
     mv ~/doctl /usr/local/bin
     chmod +x /usr/local/bin/doctl