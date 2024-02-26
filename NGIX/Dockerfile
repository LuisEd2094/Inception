#Bullseye Debian v11. Latest is Debian v12 Bookworm 
FROM debian:11 

#Install NGINX for the contianer
RUN apt-get update && apt-get install -y nginx

#remove standard config and use mine  

RUN rm -v /etc/nginx/nginx.conf

COPY nginx.conf /etc/nginx/nginx.conf

COPY index.html /usr/share/nginx/html/index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]


