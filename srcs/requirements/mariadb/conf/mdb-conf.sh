#!/bin/bash

mysqld_safe --port=3306 --bind-address=0.0.0.0 --datadir='/var/lib/mysql'
sleep 5
mariadb -u root -p$MYSQL_ROOT_PASSWORD -e "CREATE DATABASE IF NOT EXISTS ${MYSQL_DB};"
mariadb -u root -p$MYSQL_ROOT_PASSWORD -e "CREATE USER IF NOT EXISTS \`${MYSQL_USER}\`@'%' IDENTIFIED BY '${MYSQL_PASSWORD}';"
mariadb -u root -p$MYSQL_ROOT_PASSWORD -e "GRANT ALL PRIVILEGES ON ${MYSQL_DB}. * TO \`${MYSQL_USER}\`@'%';"
mariadb -u root -p$MYSQL_ROOT_PASSWORD -e "FLUSH PRIVILEGES;"