# Dockerfile que permite desplegar una aplicación web escrita en PHP.
# El código fuente de la aplicación web está alojado en GitHub.

FROM debian:latest
# Actualizar paquetes
RUN apt update && apt upgrade -y \
# Instalar dependencias
&& apt install apache2 libapache2-mod-php php php-mysql mariadb-client -y \
# Limpiar caché
&& apt clean && rm -rf /var/lib/apt/lists/*
# Copiar la aplicación a la ruta de Apache
COPY bookmedik /var/www/html/
# Copiar el script
COPY script.sh /tmp/
# Darle permisos de ejecución y eliminar el index por defecto de Apache
RUN chmod +x /tmp/script.sh && rm /var/www/html/index.html
# Ejecutar el script
CMD ["bash", "-c", "/tmp/script.sh"]
