FROM atandock/apache-php:latest
MAINTAINER atan <tanshiqi@gmail.com>

RUN curl -Lo /var/www/index.php http://downloads.sourceforge.net/adminer/adminer-4.1.0.php && rm /var/www/index.html

EXPOSE 80
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
