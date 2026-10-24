FROM dunglas/frankenphp:1-php8.5

LABEL maintainer="nimdasx@gmail.com"
LABEL description="frankenphp with additional module like phalcon5"

#set timezone
RUN ln -sf /usr/share/zoneinfo/Asia/Jakarta /etc/localtime

#config php
COPY php-nimdasx.ini /usr/local/etc/php/conf.d/php-nimdasx.ini

RUN install-php-extensions \
	# ioncube_loader \
	pdo_mysql \
	pdo_pgsql \
	gd \
	intl \
	zip \
	mysqli \
	xmlrpc \
	redis \
	# sqlsrv \
	# pdo_sqlsrv \
	phalcon-5.23.0