FROM nextcloud:23.0.3-apache

RUN apt-get update && apt-get install -y procps smbclient 
RUN pecl install smbclient
RUN docker-php-ext-enable smbclient
RUN rm -rf /var/lib/apt/lists/*
