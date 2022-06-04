FROM nextcloud:24.0.1-apache

RUN apt-get update && apt-get install -y sudo procps smbclient libsmbclient-dev && pecl install smbclient && docker-php-ext-enable smbclient && rm -rf /var/lib/apt/lists/*
