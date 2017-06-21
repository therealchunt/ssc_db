# ssc_db
mysql database for SSC

# Setup
place the create-tables.sql for mysql databases in the files directory

# Build
```docker build --no-cache --tag <image_name> .```

# Run
specify mysql conf file and data directory with -v option as below
```docker run --name ssc_db -v /absolute/path/to/config/directory:/etc/mysql/conf.d -v /path/to/data/directory:/var/lib/mysql -d <image_name>```
