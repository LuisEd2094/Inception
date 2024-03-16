FROM debian:11 


RUN apt-get update -y && apt-get install mariadb-server vim -y

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/

COPY conf/vimrc root/.vimrc

COPY ./conf/start_cmd.sh /

#RUN bash init_config.sh

CMD ["/start_cmd.sh"]