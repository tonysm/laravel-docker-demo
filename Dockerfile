FROM hitalos/laravel:latest

MAINTAINER Tony Messias

ADD . /var/www
ADD .env.example /var/www/.env
ADD ./resources/docker/app/start.sh /usr/sbin/start.sh
RUN chmod +x /usr/sbin/start.sh

CMD ["/usr/sbin/start.sh"]

