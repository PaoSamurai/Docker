# Bookmedik no funciona con PHP superior a 7.4
FROM php:7.4-apache
# Instalar actualizaciones
RUN apt update && apt upgrade -y \
# Instalar dependencias
&& docker-php-ext-install mysqli pdo pdo_mysql \
&& apt install mariadb-client -y \
# Limpiar caché
&& apt clean && rm -rf /var/lib/apt/lists/*
# Copiar la aplicación en la ruta de Apache
COPY bookmedik /var/www/html/
# Copiar el script en el contenedor
COPY script.sh /tmp/
# Darle permisos de ejecución
RUN chmod +x /tmp/script.sh
# Eliminar el index.html original de Apache
RUN rm /var/www/html/index.html
# Ejecutar el script
CMD ["bash", "-c", "/tmp/script.sh"]
