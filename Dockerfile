FROM php:8.3-apache

# Установка необходимых расширений для работы с PostgreSQL
RUN apt-get update && \
    apt-get install -y libpq-dev && \
    docker-php-ext-install pdo pdo_pgsql pgsql

# Копирование файлов проекта в контейнер
COPY . /var/www/html/

