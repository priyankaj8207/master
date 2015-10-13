#!/bin/bash

echo "Post Install Configurations ..."
USER=user
USER_HOME=/home/user

sudo cp /vagrant/context.xml /opt/tomcat7/conf/
sudo cp /vagrant/startup.sh /opt/tomcat7/bin/

echo "Restarting Apache tomcat 7 server..."
#sudo service tomcat stop
sudo service tomcat start
echo "browse http://localhost:18080/"

sudo cp /vagrant/default /etc/nginx/sites-enabled/
echo "Restarting NGINX server..."
sudo service nginx restart
echo "browse http://localhost:18888/"




