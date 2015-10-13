#!/bin/bash

echo "Installing Java please wait"
USER=vagrant
USER_HOME=/home/vagrant

sudo cp /vagrant/jdk-7u79-linux-x64.gz $USER_HOME/
sudo tar -xvf $USER_HOME/jdk-7u79-linux-x64.gz -C $USER_HOME/  > /dev/null
sudo rm $USER_HOME/jdk-7u79-linux-x64.gz
sudo mv $USER_HOME/jdk1.7.0_79 /opt/jdk1.7
sudo chown -R $USER:$USER /opt/jdk1.7

sudo apt-get install chkconfig

sudo update-alternatives --install '/usr/bin/java' java '/opt/jdk1.7/bin/java' 2
sudo update-alternatives --install '/usr/bin/javac' javac '/opt/jdk1.7/bin/javac' 2
sudo update-alternatives --install '/usr/bin/jar' jar '/opt/jdk1.7/bin/jar' 2

sudo update-alternatives --set java '/opt/jdk1.7/bin/java'
sudo update-alternatives --set javac '/opt/jdk1.7/bin/javac'
sudo update-alternatives --set jar '/opt/jdk1.7/bin/jar'

echo "Checking Java version..."
javac -version
