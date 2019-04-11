FROM centos:centos7

RUN yum install -y\
	httpd \
	php \
	php-cli \
	php-common \
	mod_ssl \
	openssl 

RUN echo "<?php phpinfo(); ?>" > /var/www/html/hola.php

WORKDIR /var/www

COPY blue-app html

COPY docker.crt /docker.crt

COPY docker.key /docker.key

COPY ssl.conf /etc/httpd/conf.d/default.conf

EXPOSE 443

CMD apachectl -DFOREGROUND
