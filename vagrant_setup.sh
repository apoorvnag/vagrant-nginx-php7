####################
#
# OS: Ubuntu 14.04
#
# PHP 7.0-fpm, NGINX, php7.0-mysql
#
# Author: Apoorv Nag
#
####################

echo "\n----- Updaing apt-get ------\n"
sudo apt-get update

echo "\n----- Installing Nginx ------\n"
sudo apt-get install nginx

echo "\n----- Installing PHP 7 ------\n"
sudo apt-get install -y language-pack-en-base
sudo LC_ALL=en_US.UTF-8 add-apt-repository ppa:ondrej/php

sudo apt-get update

sudo apt-get install python-software-properties software-properties-common
sudo LC_ALL=C.UTF-8 add-apt-repository ppa:ondrej/php
sudo apt-get update

sudo apt-get install php7.0-fpm

echo "\n----- Installing PHP7.0 Mysql ------\n"
sudo apt-get install php7.0-mysql



# We can list the applications configurations that ufw knows how to work with
echo "\n----- Allowing Nginx HTTP ------\n"
sudo ufw app list
sudo ufw allow 'Nginx HTTP'
sudo ufw status

#sudo apt-get install php5-fpm
#sudo /etc/init.d/php5-fpm restart

# Uncomment fastcgi params setting in /etc/nginx/sites-enabled/default

#sudo apt-get install mysql-server
#It asks for root password
#/usr/sbin/mysqld (mysqld 5.5.59-0ubuntu0.14.04.1) starting as process 5513


# sudo apt-get install php5-fpm
# Creating config file /etc/php5/fpm/php.ini with new version
# sudo /etc/init.d/php5-fpm start
# sudo /etc/init.d/php5-fpm stop
# sudo /etc/init.d/php5-fpm restart
# sudo restart php5-fpm


echo "\n----- Installing Git ------\n"
sudo apt-get install git

# https://nodejs.org/en/download/package-manager/#debian-and-ubuntu-based-linux-distributions
echo "\n----- Installing Node JS 10 ------\n"
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo apt-get install -y nodejs


# Java8
# https://gist.github.com/tinkerware/cf0c47bb69bf42c2d740
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get install oracle-java8-installer
