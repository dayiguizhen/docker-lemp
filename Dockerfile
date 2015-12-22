FROM buildpack-deps:jessie-curl
MAINTAINER dayiguizhen

RUN rm /etc/localtime
COPY Shanghai /etc/localtime

RUN apt-get update && apt-get -y install supervisor php5-fpm php5-mysql memcached php5 php5-memcache mysql-client php5-memcached

RUN apt-get -y install php5-gd php-apc php5-mcrypt

RUN apt-get -y install nginx

RUN mkdir /var/log/php-fpm

VOLUME ['/web']

WORKDIR /web

COPY entrypoint.sh /sbin/entrypoint.sh
RUN chmod 755 /sbin/entrypoint.sh

CMD /sbin/entrypoint.sh
