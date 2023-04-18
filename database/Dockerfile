FROM mysql:8.0
WORKDIR /var/lib/mysql

ENV MYSQL_USER=root
ENV MYSQL_DATABASE=meubanco
ENV MYSQL_ROOT_PASSWORD=Senha123

COPY ./database.sql /docker-entrypoint-initdb.d/

EXPOSE 3306
