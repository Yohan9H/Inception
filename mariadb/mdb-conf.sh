service mariadb start

sleep 5

mariadb -e "CREATE DATABASE IF NOT EXISTS ${MYSQL_DB};"

mariadb -e "CREATE USER IF NOT EXISTS \`${MYSQL_USER}\`@'%' IDENTIFIED BY '${MYSQL_PASSWORD}';"

mariadb -e "GRANT ALL PRIVILEGES ON ${MYSQL_DB}. * TO \`${MYSQL_USER}\`@'%';"