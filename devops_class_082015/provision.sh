#!/usr/bin/env bash
echo 'Installing the Apache ans setting the apache up... Please Wait'
apt-get update > /dev/null 2>&1
apt-get install -y apache2
rm -fr /var/www
ln -fs /vagrant /var/www