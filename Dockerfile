FROM mysql:5.7.18
LABEL maintainer "chunt"

#args used during building of this image
ARG MY_FILES_DIR=files

#setting environment variables
ENV MYSQL_DATABASE=ssc_db MYSQL_USER=ssc_db MYSQL_PASSWORD=F0rt1fy! MYSQL_ROOT_PASSWORD=F0rt1fy!

#for initialization only
COPY $MY_FILES_DIR/* /docker-entrypoint-initdb.d/
