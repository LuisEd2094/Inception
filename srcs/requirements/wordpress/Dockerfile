FROM debian:11 

RUN apt-get update -y && apt-get install curl php7.4 php-fpm php-mysql mariadb-client vim -y 

COPY conf/vimrc root/.vimrc


#RUN wget https://wordpress.org/wordpress-6.4.3.zip -P /var/www/html/

#RUN cd /var/www/html && unzip wordpress-6.4.3.zip && rm wordpress-6.4.3.zip

COPY conf/wp-config.php /
COPY conf/script.sh /

RUN /script.sh

#Root permsion to run folder
RUN chmod 755 /var/www/html
RUN chown -R root:root /var/www/html
#Start service to create sockets and stop it so the command can run it on the Foreground

#COPY conf/info.php /var/www/html/wordpress/info.php
#RUN service php7.4-fpm start

#RUN service php7.4-fpm stop
#RUN sed -i 's/listen = \/run\/php\/php7.4-fpm.sock/listen = 9000/g' /etc/php/7.4/fpm/pool.d/www.conf


CMD ["php-fpm7.4", "-F"]