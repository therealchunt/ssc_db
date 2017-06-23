# ssc_db
mysql database for SSC

# Setup
place the create-tables.sql for mysql databases in the files directory

# Build
```docker build --no-cache -t ${SSC_DB_IMG} .```

# Run
specify mysql conf file and data directories with -v option as below
```
docker run --name ${SSC_DB_CONT_NAME} --network=${NETWORK_HOST} --ip ${SSC_DB_IP} -v ${SSC_DB_CONF_DIR}:/etc/mysql/conf.d -v ${SSC_DB_DATA_DIR}:/var/lib/mysql -d ${SSC_DB_IMG}
```
