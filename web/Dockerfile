FROM php:7.4-apache

# Installiamo le estensioni necessarie per connettersi a MySQL
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Abilitiamo il modulo rewrite di Apache (utile per i framework/routing)
RUN a2enmod rewrite

RUN a2enmod headers
RUN echo "expose_php = Off" > /usr/local/etc/php/conf.d/expose-php.ini
RUN { echo "ServerTokens Prod"; echo "ServerSignature Off"; } >> /etc/apache2/apache2.conf
COPY 000-default.conf /etc/apache2/sites-available/000-default.conf

