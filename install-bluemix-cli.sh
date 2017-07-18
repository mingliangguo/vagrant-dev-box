#!/bin/bash

# Instructions from:

# https://onehundred15.wordpress.com/2015/11/20/ibm-bluemix-containers/

set -ex

cd ~
curl -s -L "https://cli.run.pivotal.io/stable?release=linux64-binary&source=github" | tar -zx
sudo mv ~/cf /usr/local/bin
cf --version

cf install-plugin -f https://static-ice.ng.bluemix.net/ibm-containers-linux_x64


