# Introduce

Dockerfile to build a LEMP(Nginx + Memcache + PHP)

# Quick Start

    docker run -tid -v /volumes/web-app:/web --link lemp-mysql:mysql dayiguizhen/docker-lemp

you should make sure you web-app look likes:

    /home/volumes/web-app
    ├── api 
    │  └── log # php error log
    ├── config # Nginx and php-fpm config files
    ├── php-app # your web-app code
    └── log # for other log

# MySQL

First,you should launch MySQL container and named it lemp-mysql

Then,you should edit you php database config file.
