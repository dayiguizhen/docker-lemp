rm /etc/nginx/nginx.conf
cp /web/config/nginx.conf /etc/nginx/
cp /web/config/web-app.conf /etc/nginx/conf.d/
rm /etc/php5/fpm/php-fpm.conf
cp /web/config/php-fpm.conf /etc/php5/fpm/
cp /web/config/web-app.fpm.conf /etc/php5/fpm/conf.d
/etc/init.d/nginx start
/etc/init.d/php5-fpm start
top
