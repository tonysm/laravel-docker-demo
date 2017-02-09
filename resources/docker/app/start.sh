#!/usr/bin/env sh

# wait the migrations to be ok, until proceed
sleep 15
php artisan migrate

php artisan route:clear
php artisan cache:clear

php artisan route:cache

php artisan storage:link

php ./artisan serve --port=80 --host=0.0.0.0