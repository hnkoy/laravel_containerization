FROM php:8.1.6-apache
MAINTAINER henock (henocknkoy9@gmail.com)
RUN apt-get update

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y zip curl sudo unzip git

#Install Composer

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN rm -Rf /var/www/html/*

RUN git clone https://github.com/hnkoy/-laravel_fresh_project.git /var/www/html/
RUN cd /var/www/html/ && composer install
COPY .env /var/www/html/
RUN sudo chmod -R 777 /var/www/html/storage/
RUN sudo chmod -R 777 /var/www/html/bootstrap/cache/

RUN cd /var/www/html/ && sudo php artisan optimize

RUN rm /etc/apache2/sites-available/000-default.conf
COPY 000-default.conf /etc/apache2/sites-available/
RUN a2ensite 000-default && service apache2 restart 
EXPOSE 80
