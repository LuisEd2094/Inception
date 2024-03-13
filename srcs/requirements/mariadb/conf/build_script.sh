service mariadb start;
#creates DB from .env name
mariadb -e "CREATE DATABASE IF NOT EXISTS \`${MYSQL_DATABASE}\`;"
#creates User
mariadb -e "CREATE USER IF NOT EXISTS \`${MYSQL_USER}\`@'localhost' IDENTIFIED BY '${MYSQL_PASSWORD}';"
#gives User all Privs 
mariadb -e "GRANT ALL PRIVILEGES ON \`${MYSQL_DATABASE}\`.* TO \`${MYSQL_USER}\`@'%' IDENTIFIED BY '${MYSQL_PASSWORD}';"
#gives Root all
mariadb -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${MYSQL_ROOT_PASSWORD}';"
#Flushes Privs so everything takes effect
mariadb -e "FLUSH PRIVILEGES;"
#Shuts down so we can start it again with everything correctly configured
mariadbadmin -u root -p$MYSQL_ROOT_PASSWORD shutdown

exec mariadbd_safe



