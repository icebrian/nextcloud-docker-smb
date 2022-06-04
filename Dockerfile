FROM nextcloud:24.0.1-apache

RUN apt-get update && apt-get install -y sudo procps smbclient libsmbclient-dev 
RUN pecl install smbclient
RUN docker-php-ext-enable smbclient
RUN rm -rf /var/lib/apt/lists/*
