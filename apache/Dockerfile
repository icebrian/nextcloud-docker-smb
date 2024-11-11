FROM nextcloud:30.0.2-apache
#FROM nextcloud:29.0.9-apache
#FROM nextcloud:28.0.12-apache
#FROM nextcloud:27.0.2-apache
#FROM nextcloud:26.0.6-apache
#FROM nextcloud:25.0.11-apache
#FROM nextcloud:24.0.1-apache

RUN apt-get update && apt-get install -y sudo procps smbclient libsmbclient-dev && pecl install smbclient && docker-php-ext-enable smbclient && rm -rf /var/lib/apt/lists/*
RUN sed -i 's/opcache.interned_strings_buffer=16/opcache.interned_strings_buffer=32/g' /usr/local/etc/php/conf.d/opcache-recommended.ini
RUN mkdir /var/www/.cache && mkdir /var/www/.cache/samba
