#Bullseye Debian v11. Latest is Debian v12 Bookworm 
FROM debian:11 

#Install NGINX for the contianer
RUN apt-get update -y && apt-get upgrade -y && apt-get install nginx vim curl openssl -y

COPY conf/vimrc root/.vimrc
COPY conf/script.sh /
#RUN /script.sh

#remove standard config and use mine  

#RUN mkdir -p /etc/nginx/ssl
#RUN openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt \
#-keyout /etc/nginx/ssl/inception.key \
#-subj "/C=ES/ST=BCN/L=Barcelona/O=42/OU=42/CN=lsoto-do.42.fr/UID=lsoto-do@student.42barcelona.com"


#COPY conf/nginx.conf /etc/nginx/sites-available/default

#RUN ln -s /etc/nginx/sites-available/default /etc/nginx/sites-enabled/
#RUN chmod 755 /var/www/html
#RUN chown -R www-data:www-data /var/www/html

#-g sets a global configuration option; daemon off; runs in the foreground
CMD ["/script.sh"]


