FROM debian:bullseye-slim

RUN apt-get update && apt-get upgrade -y &&\
    apt-get install -y nginx openssl &&\
    mkdir -p /etc/nginx/ssl &&\
    openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout \
    /etc/nginx/ssl/inception.key -subj "/C=FR/ST=ile-de-france/L=paris/O=42/OU=42/CN=localhost/UID=yohan42"

COPY ./nginx.conf /etc/nginx/nginx.conf

RUN mkdir -p /var/www/wordpress &&\
    chown -R www-data:www-data /var/www/wordpress

CMD [ "nginx", "-g", "daemon off;" ]