# Стартовый образ CentOS 7
FROM centos:7

# Обновление системы
RUN yum update -y && yum install -y epel-release

# Установка необходимых пакетов
RUN yum install -y nginx php-cli php-fpm postgresql-server

# Настройка Nginx
RUN rm -rf /var/cache/yum/* && rm -rf /var/log/nginx/*
RUN mkdir -p /run/nginx
RUN chown -R nginx:nginx /run/nginx

# Настройка PHP-FPM
COPY php.ini /usr/local/etc/php/
RUN echo "cgi.fix_pathinfo=1" >> /usr/local/etc/php/php.ini

# Запуск PostgreSQL
RUN systemctl enable postgresql.service
RUN systemctl start postgresql.service

# Создание пользователя и базы данных для приложения
RUN su - postgres -c "createuser --superuser appuser"
RUN su - postgres -c "createdb appdb"

# Запуск сервисов
CMD ["nginx", "-g", "daemon off;"]
