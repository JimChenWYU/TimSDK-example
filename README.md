# TimSDK-example
The repo is a demo about how to use [TimSDK](https://github.com/JimChenWYU/TimSDK)


## Requirement

1. PHP >= 5.5.9
2. **[Composer](https://getcomposer.org/)**
3. Openssl extension

## Installation

```bash
$ git clone git@github.com:JimChenWYU/TimSDK-example.git
```

## Usage

- Install dependencies
```bash
$ composer install --no-dev
```

- Fill in your `.env` file
```
APP_ID=your appid
IDENTIFIER=your identifier
PRIVATE_KEY=your private key
PUBLIC_KEY=your public key
```


- Start a server
```bash
$ ./server.sh
```

- Send a request
```bash
$ curl -X GET http://localhost:8080/v4/openim_dirty_words/get
```


## License

[MIT](https://opensource.org/licenses/MIT/)