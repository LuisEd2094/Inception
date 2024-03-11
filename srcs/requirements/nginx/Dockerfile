#Bullseye Debian v11. Latest is Debian v12 Bookworm 
FROM debian:11 

#Install NGINX for the contianer
RUN apt-get update && apt-get install -y nginx vim curl OpenSSL 

#remove standard config and use mine  

RUN mkdir -p /etc/nginx/ssl

#RUN rm -v /etc/nginx/nginx.conf

#COPY nginx.conf /etc/nginx/nginx.conf

#COPY index.html /usr/share/nginx/html/index.html

#EXPOSE 80

#-g sets a global configuration option; daemon off; runs in the foreground
#CMD ["nginx", "-g", "daemon off;"]


