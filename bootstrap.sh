#!/usr/bin/env bash

echo "\n-----Updating ------\n"
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install -y build-essential

# add for vim8
# add-apt-repository ppa:jonathonf/vim -y
# apt-get update

# required for build vim from source
sudo apt-get install -y libncurses5-dev libgnome2-dev libgnomeui-dev \
    libgtk2.0-dev libatk1.0-dev libbonoboui2-dev \
    libcairo2-dev libx11-dev libxpm-dev libxt-dev python-dev \
    python3-dev ruby-dev lua5.1 lua5.1-dev libperl-dev git cmake
# apt-get install -y vim

echo "\n----- Installing git and others ------\n"
sudo apt-get install -y git
sudo apt-get install -y docker
sudo apt-get install -y nodejs-legacy 
sudo apt-get install -y nodejs npm
sudo apt-get install -y firefox xvfb
sudo apt-get install -y chromium-browser

# echo "\n----- Installing Java 8 ------\n"
# apt-get install -y python-software-properties debconf-utils
# # echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" | sudo tee -a /etc/apt/sources.list.d/webupd8team-java.list
# # echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" | sudo tee -a /etc/apt/sources.list.d/webupd8team-java.list
# # apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys EEA14886
# add-apt-repository -y ppa:webupd8team/java
# echo "\n----- Installing Java 8 step update ------\n"
# apt-get update
# echo debconf shared/accepted-oracle-license-v1-1 select true | sudo debconf-set-selections
# echo debconf shared/accepted-oracle-license-v1-1 seen true | sudo debconf-set-selections
# echo "\n----- Installing Java 8 step install ------\n"
# apt-get install -y oracle-java8-installer
# apt install -y oracle-java8-set-default
# update-java-alternatives -s java-8-oracle

echo "\n----- Installing Apache and Java 8 ------\n"
sudo add-apt-repository ppa:openjdk-r/ppa -y
sudo apt-get update
sudo apt-get -y install openjdk-8-jdk
sudo update-alternatives --config java

echo "\n----- DONE ------\n"


echo "\n----- Installing maven ------\n"
sudo apt-get install -y maven
sudo apt-get install -y gradle
sudo apt-get install cassandra

