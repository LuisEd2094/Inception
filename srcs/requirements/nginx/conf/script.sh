#!/bin/bash

openssl req -x509 -nodes -days 365 \
 -newkey rsa:2048 \
 -keyout /etc/ssl/private/nginx-selfsigned.key \
 -out /etc/ssl/certs/nginx-selfsigned.crt \
 -subj "/C=ES/ST=BCN/L=Barcelona/O=42/OU=42/CN=lsoto-do.42.fr/UID=lsoto-do@student.42barcelona.com"


echo "
server {
    listen 443 ssl;
    listen [::]:443 ssl;

    #server_name www.lsoto-do.42.fr lsoto-do.42.fr;

    ssl_certificate /etc/ssl/certs/nginx-selfsigned.crt;
    ssl_certificate_key /etc/ssl/private/nginx-selfsigned.key;" > /etc/nginx/sites-available/default


echo '
    ssl_protocols TLSv1.3;

    index index.php;
    root /var/www/html;

    location ~ [^/]\.php(/|$) { 
            try_files $uri =404;
            fastcgi_pass wordpress:9000;
            include fastcgi_params;
            fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;
        }
} ' >>  /etc/nginx/sites-available/default


nginx -g "daemon off;"