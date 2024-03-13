FROM debian:11 

RUN apt-get update && apt-get install mariadb-server vim -y

COPY conf/vimrc root/.vimrc
COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/

COPY conf/build_script.sh /

#CMD ["/build_script.sh"]
