# Setup 
```bash

cp .env.example .env

composer install
php artisan key:generate
php artisa migrate --seed
php artisan cache:clear

# Database in doc/lavarel(2).sql