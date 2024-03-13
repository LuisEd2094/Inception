FROM debian:11 

RUN apt-get update && apt-get install wget unzip php7.4 php-fpm php-mysql mariadb-client vim -y 

COPY conf/vimrc root/.vimrc

COPY conf/wp-config.php /var/www/wordpress/wp-config.php

RUN wget https://wordpress.org/wordpress-6.4.3.zip -P /var/www/

RUN cd /var/www && unzip wordpress-6.4.3.zip && rm wordpress-6.4.3.zip

#Root permsion to run folder

RUN chown -R root:root /var/www/wordpress

EXPOSE 9000
