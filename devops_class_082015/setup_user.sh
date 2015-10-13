#!/bin/bash

echo "Creating user : 'user'"

sudo su - -c "mkdir /home/user/"
sudo su - -c "useradd -d /home/user/ -p user user"
sudo su - -c "usermod -m -d /home/user/ user"
sudo su - -c "usermod -s /bin/bash user"

sudo su - -c "echo 'user ALL=(ALL:ALL) ALL' >> /etc/sudoers"