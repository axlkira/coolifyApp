FROM laravelsail/php82-composer

WORKDIR /var/www/html

COPY . .

RUN composer install --no-dev --optimize-autoloader && \
    php artisan config:cache

CMD ["php", "artisan", "serve", "--host=0.0.0.0", "--port=8000"]
