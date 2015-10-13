#!/bin/bash

echo "Installing Apache Tomcat 7 please wait"
USER=vagrant
USER_HOME=/home/vagrant

sudo cp /vagrant/apache-tomcat-7.0.63.tar.gz $USER_HOME/
sudo tar -xvf $USER_HOME/apache-tomcat-7.0.63.tar.gz -C $USER_HOME/  > /dev/null
sudo rm $USER_HOME/apache-tomcat-7.0.63.tar.gz
sudo mv $USER_HOME/apache-tomcat* /opt/tomcat7
sudo chown -R $USER:$USER /opt/tomcat7

sudo cp /vagrant/tomcat /etc/init.d/
sudo chmod 755 /etc/init.d/tomcat
sudo update-rc.d tomcat defaults
sudo chkconfig tomcat --level 2345 on




