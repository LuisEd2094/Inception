FROM debian:11 

RUN apt-get update && apt-get install mariadb-server vim -y

COPY conf/vimrc root/.vimrc

COPY conf/build_script.sh root/build_script.sh

#RUN bash root/build_script.sh