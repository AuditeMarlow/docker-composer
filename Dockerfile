FROM auditemarlow/php:latest

MAINTAINER Audite Marlow <github.com/AuditeMarlow>

ENV COMPOSER_ALLOW_SUPERUSER 1
ENV COMPOSER_HOME /tmp

COPY docker-install-composer /docker-install-composer

RUN /docker-install-composer && rm /docker-install-composer

ENTRYPOINT ["composer"]
