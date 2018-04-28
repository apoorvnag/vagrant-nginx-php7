####################
#
# OS: Ubuntu 14.04
#
# PHP 7.0-fpm, NGINX, php7.0-mysql
#
# Author: Apoorv Nag
#
####################
sudo apt-get update

sudo apt-get install nginx

sudo apt-get install -y language-pack-en-base
sudo LC_ALL=en_US.UTF-8 add-apt-repository ppa:ondrej/php

sudo apt-get update

sudo apt-get install python-software-properties software-properties-common
sudo LC_ALL=C.UTF-8 add-apt-repository ppa:ondrej/php
sudo apt-get update

#sudo apt-get install php7.0-fpm
#sudo apt-get install php7.0-mysql




sudo ufw allow 'Nginx HTTP'
sudo ufw status

sudo apt-get install php5-fpm
sudo /etc/init.d/php5-fpm restart

# Uncomment fastcgi params setting in /etc/nginx/sites-enabled/default

sudo apt-get install mysql-server
It asks for root password
/usr/sbin/mysqld (mysqld 5.5.59-0ubuntu0.14.04.1) starting as process 5513


sudo apt-get install php5-fpm
Creating config file /etc/php5/fpm/php.ini with new version
sudo /etc/init.d/php5-fpm start
sudo /etc/init.d/php5-fpm stop
sudo /etc/init.d/php5-fpm restart
sudo restart php5-fpm


Include it in /etc/nginx/nginx.conf in server {}
# pass the PHP scripts to FastCGI server listening on 127.0.0.1:9000
#
location ~ \.php$ {
                try_files $uri =404;
                fastcgi_split_path_info ^(.+\.php)(/.+)$;
                # NOTE: You should have "cgi.fix_pathinfo = 0;" in php.ini
                # With php5-cgi alone:
                # fastcgi_pass 127.0.0.1:9000;
                # With php5-fpm:
                fastcgi_pass unix:/var/run/php5-fpm.sock;
                fastcgi_index index.php;
                include fastcgi_params;
        }


vi /etc/php5/fpm/php.ini
set cgi.fix_pathinfo=0:

sudo apt-get install git






sudo apt-get install php5-fpm php5-mysql
sudo service php5-fpm restart