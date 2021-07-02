FROM mysql

ENV MYSQL_DATABASE bibelquiz
ENV MYSQL_ROOT_PASSWORD supersecret
ENV MYSQL_USER bibelquiz
ENV MYSQL_PASSWORD bibelquiz

COPY *.sql /docker-entrypoint-initdb.d/