FROM php:7.4-apache

# Installiamo le estensioni necessarie per connettersi a MySQL
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Abilitiamo il modulo rewrite di Apache (utile per i framework/routing)
RUN a2enmod rewrite

