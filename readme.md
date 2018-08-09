## Installation

Clone this repository

```git clone https://github.com/elraghifary/game-api-laravel.git```

Update dependencies

```composer install```

Copy .env and edit database

```cp .env.example .env```

Update key

```php artisan key:generate```

Running migrations

```php artisan migrate```

Create the encryption keys needed to generate secure access tokens

```php artisan passport:install --force```

start a development server at http://localhost:8000

```php artisan serve```

## License

The Laravel framework is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).
