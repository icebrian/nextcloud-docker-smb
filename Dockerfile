FROM nextcloud:23.0.5-apache

RUN apt-get update && apt-get install -y procps smbclient libsmbclient-dev 
RUN pecl install smbclient
RUN docker-php-ext-enable smbclient
RUN rm -rf /var/lib/apt/lists/*
