#!/bin/bash
# Volcar esquema a MariaDB
mariadb -u $BOOKMEDIK_USER --password=$BOOKMEDIK_PASSWORD -h $HOSTNAME $DB_NAME < /var/www/html/schema.sql
# Ejecutar Apache de fondo (como demonio)
/usr/sbin/apache2ctl -D FOREGROUND
