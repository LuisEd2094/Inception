service mariadb start;
#creates DB from .env name
mariadb -e "CREATE DATABASE IF NOT EXISTS \`${SQL_DATABASE}\`;"
#creates User
mariadb -e "CREATE USER IF NOT EXISTS \`${SQL_USER}\`@'localhost' IDENTIFIED BY '${SQL_PASSWORD}';"
#gives User all Privs 
mariadb -e "GRANT ALL PRIVILEGES ON \`${SQL_DATABASE}\`.* TO \`${SQL_USER}\`@'%' IDENTIFIED BY '${SQL_PASSWORD}';"
#gives Root all
mariadb -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${SQL_ROOT_PASSWORD}';"
#Flushes Privs so everything takes effect
mariadb -e "FLUSH PRIVILEGES;"
#Shuts down so we can start it again with everything correctly configured
mariadbadmin -u root -p$SQL_ROOT_PASSWORD shutdown

exec mariadbd_safe



