FROM debian:bullseye-slim

RUN apt-get update && apt-get upgrade -y &&\
    apt-get install -y mariadb-server netcat

COPY conf/mdb-conf.sh /mdb-conf.sh

RUN chmod +x /mdb-conf.sh

ENTRYPOINT [ "conf/mdb-conf.sh" ]