#!/usr/bin/env sh

# wait the migrations to be ok, until proceed
n=0
until [ $n -ge 5 ]
do
  php artisan migrate && break
  n=$[$n+1]
  sleep 15
done

php artisan route:clear
php artisan cache:clear

php artisan route:cache

php artisan storage:link

php ./artisan serve --port=80 --host=0.0.0.0