# DNSDevOps
Тестовое задание на позицию стажёр-DevOps в компанию DNS Технологии

# LEMP-Stack с PostgreSQL

## Описание проекта

Проект Docker-контейнера с LEMP-стеком (Linux, Nginx, PostgreSQL, PHP), настроенный для быстрого развёртывания и тестирования.

Основные компоненты:
Nginx в качестве веб-сервера и обратного прокси сервера
PHP-FPM (FastCGI Process Manager) для обработки PHP-запросов
PostgreSQL в качестве базы данных

## Требования

Docker
Git

## Установка

Клонирование репозитория: git clone https://github.com/vfokina/DNSDevOps.git cd DNSDevOps

Запуск контейнеров: docker-compose up -d

## Настройка

После запуска контейнеров открыть браузер и перейти по адресу http://localhost.... Основная страница будет отображать данные из бд PostgreSQL. Метрики Nginx доступны по адресу http://localhost/metrics....

## Использование

### Доступ к базе данных

- Хост: localhost
- Пользователь: appuser
- Пароль: password
- База данных: appdb

### PHP скрипт

Основной PHP скрипт находится в файле index.php и выводит первые две строки из таблицы users в базе данных appdb.

## Настройка проекта
Для настройки проекта нужно изменить файлы:

- `docker-compose.yml`: для изменения параметров контейнеров
- `nginx.conf`: для настройки Nginx
- `default.conf`: для дополнительных конфигураций Nginx
- `index.php`: для изменения PHP-кода

