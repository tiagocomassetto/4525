FROM debian
RUN apt-get update
RUN apt-get install apache2 -y
CMD service apache2 restart
COPY index.html /var/www/html/ 
