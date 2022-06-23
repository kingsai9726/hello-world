FROM ubuntu:latest
RUN apt-get update -y && apt-get install apache2 -y && service apache2 start
COPY index.html /var/www/html/
CMD ["/usr/sbin/apache2",-"D","FOREGROUND"]
EXPOSE 8080
