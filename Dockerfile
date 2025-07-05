# Usa a imagem oficial do PHP com Apache
FROM php:8.2-apache

# Instala as extensões necessárias para MySQL
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Copia todos os arquivos do projeto para o servidor
COPY . /var/www/html/

# Ativa o suporte a .htaccess (caso você use)
RUN a2enmod rewrite
