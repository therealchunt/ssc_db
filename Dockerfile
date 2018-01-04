FROM mysql:5.7.18
LABEL maintainer "chunt"

# args used during building of this image
ARG MY_FILES_DIR=files

# setting environment variables
ENV MYSQL_DATABASE=ssc_db MYSQL_USER=ssc_db MYSQL_PASSWORD=<PW> MYSQL_ROOT_PASSWORD=<PW>

# for initialization or upgrade
# place create-tables.sql or bkp.sql from a mysqldump
COPY $MY_FILES_DIR/* /docker-entrypoint-initdb.d/

EXPOSE 3306
