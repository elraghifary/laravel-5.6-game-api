## Development Tools
Laragon 3.4 (Apache 2.4, PHP 7.2, MySQL 5.7)
https://sourceforge.net/projects/laragon/files/releases/3.4/laragon-wamp.exe/download

## Installation

Clone this repository

```git clone https://github.com/elraghifary/laravel-5.6-game-api.git```

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

## Postman

https://documenter.getpostman.com/view/4941285/RWTixfPz

## License

The Laravel framework is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).
