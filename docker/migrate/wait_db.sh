#!/bin/sh

until
  mysqladmin ping -h ${MYSQL_HOST} -u${MYSQL_USER} -p${MYSQL_PASSWORD}
do
  echo 'waiting for mysql connection...'
  sleep 3
done
