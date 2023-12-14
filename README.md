# Setup 
```bash

cp .env.example .env

composer install
php artisan key:generate
php artisan migrate --seed
php artisan cache:clear

# If Database have a bug, please create empty database and import db in doc/lavarel(2).sql