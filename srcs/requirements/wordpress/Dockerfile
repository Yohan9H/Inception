FROM debian:bullseye-slim

RUN apt-get update && apt-get upgrade -y &&\
    apt-get install -y curl php php7.4-fpm php-mysql mariadb-client wget

COPY tools/wp_conf.sh /usr/local/bin/wp_conf.sh

RUN chmod +x /usr/local/bin/wp_conf.sh

EXPOSE 9000

ENTRYPOINT [ "/usr/local/bin/wp_conf.sh" ]