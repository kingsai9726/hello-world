FROM ubuntu:latest
RUN apt-get update -y && apt-get install apache2 -y && service apache2 start
COPY index.html /var/www/html/index.html
EXPOSE 8080
