# WordPress Sandbox

This library is WordPress [Docker](https://www.docker.com/) setup which uses [SQLite](https://www.sqlite.org/) database and [PHP built-in web server](https://www.php.net/manual/en/features.commandline.webserver.php).

## Usage

### Build

```shell
$ docker compose build --pull --no-cache 
```

### Run

```shell
$ docker compose up 
```

### View

```shell
http://localhost 
```

### Shell

```shell
$ docker compose exec wordpress-sandbox /bin/sh
```

### Close

```shell
$ docker compose down --remove-orphans 
```

## License

[MIT](license.txt)