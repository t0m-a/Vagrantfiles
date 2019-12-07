#!/usr/bin/env bash
     apt-get update && apt-get upgrade -y
	apt-get install nginx -y
     cd ~
     curl --silent -L https://dl.google.com/go/go1.13.5.linux-amd64.tar.gz && tar -xvf go1.13.5.linux-amd64.tar.gz && mv go /usr/local
     printf '# Golang\nexport GOROOT=/usr/local/go\nexport GOPATH=$HOME/workspaces/go\nexport PATH=$GOPATH/bin:$GOROOT/bin:$PATH\n\n' >> .profile
     exit 0