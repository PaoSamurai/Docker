#! /bin/bash

# Volcar la base de datos. --password para que no pida la contraseña
sleep 5 && mariadb -u $BOOKMEDIK_USER --password=$BOOKMEDIK_PASSWORD -h \
$HOSTNAME $DB_NAME < /var/www/html/schema.sql
# Es igual a:
# mariadb -u bookmedik --password=bookmedik -h db
# Ejecutar Apache de fondo
apache2ctl -D FOREGROUND
