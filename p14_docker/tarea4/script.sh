#!/bin/bash

# Darle tiempo al resto de contenedores a arrancar
sleep 10 && mariadb -u $BOOKMEDIK_USER --password=$BOOKMEDIK_PASSWORD \
-h $HOSTNAME $DB_NAME < /usr/share/nginx/html/schema.sql

nginx -g "daemon off;"
