# Steps to install Influx db for Jmeter Live Metrics

## Step1: Add influxdbv yum repo

`sudo tee  /etc/yum.repos.d/influxdb.repo<<EOF
[influxdb]
name = InfluxDB Repository
baseurl = https://repos.influxdata.com/rhel/8/x86_64/stable/
enabled = 1
gpgcheck = 1
gpgkey = https://repos.influxdata.com/influxdb.key
EOF`

## Step 2: Install influxdb

`yum install influxdb -y`

## Step3: Start and enable influxdb

`systemctl start influxdb`
`systemctl enable influxdb`

## Create auth for influxdb

`curl -XPOST "http://localhost:8086/query" --data-urlencode "q=CREATE USER \
myuser WITH PASSWORD 'mypassword' WITH ALL PRIVILEGES"`

## Create a db for Jmeter live metrics

Login to influxdb:
`influx -username 'username' -password 'password'`

Create a db named as Jmeter in influxdb:

`CREATE DATABASE Jmeter`
                                              
                                              
