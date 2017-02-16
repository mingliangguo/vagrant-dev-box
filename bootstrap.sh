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
sudo apt-get install zsh
sudo apt-get install -y git
sudo apt-get install -y docker
sudo apt-get install -y nodejs-legacy 
sudo apt-get install -y nodejs npm
sudo apt-get install -y firefox xvfb
sudo apt-get install -y chromium-browser

echo "install oh-my-zsh"
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
chsh -s `which zsh`

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

# echo "\n----- Installing Apache and Java 8 ------\n"
# sudo add-apt-repository ppa:openjdk-r/ppa -y
# sudo apt-get update
# sudo apt-get -y install openjdk-8-jdk
# sudo update-alternatives --config java

echo "\n----- Installing Oracle Java 8 ------\n"
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get -y install oracle-java8-set-default
sudo update-alternatives --config java
echo "\n----- DONE ------\n"


echo "\n----- Installing maven and gradle ------\n"
sudo apt-get install -y maven
sudo apt-get install -y gradle
echo "\n----- DONE ------\n"

echo "\n----- Installing Cassandra ------\n"
# refer to http://cassandra.apache.org/download/
echo "deb http://www.apache.org/dist/cassandra/debian 310x main" | sudo tee -a /etc/apt/sources.list.d/cassandra.sources.list
curl https://www.apache.org/dist/cassandra/KEYS | sudo apt-key add -
sudo apt-get update
# sudo apt-key adv --keyserver pool.sks-keyservers.net --recv-key A278B781FE4B2BDA
sudo apt-get install cassandra

# open ports for cassandra to run in the private ip address, i.e. not localhost
sudo ufw allow 8888
sudo ufw allow 7000
sudo ufw allow 7001
sudo ufw allow 7199
sudo ufw allow 9042
sudo ufw allow 9160
sudo ufw allow 61620
sudo ufw allow 61621
echo "\n----- DONE ------\n"

