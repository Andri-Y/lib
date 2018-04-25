##Build with:

[Laradock](http://laradock.io/)

[Laravel 5.4](https://laravel.com/)

##Run
(all commands and settings are execute from project root folder)

###setup

create own .env file

`cd laradock `

`cp env-example .env`

You need to setup mysql settings `/.env` to `laradock/.env` 

You need take these parameters and set up it into `laradock/.env`.

###start docker

`cd laradock`

run containers

`docker-compose up -d mysql nginx beanstalkd php-fpm workspace redis phpmyadmin`

###get mysql database IP address

`docker ps`

Find {IMAGE} `laradock_mysql`, copy it's {CONTAINER ID}

`docker inspect CONTAINER ID`

List it. You will see IPAddress. Copy it and paste into `/.env` DB_HOST field

also you will need it for phpMyAdmin {server}

###use composer and artisan in container

`docker ps`

Find {IMAGE} `laradock_workspace`, copy it's {CONTAINER ID}

`docker exec -i -t --user laradock {CONTAINER ID} bash`

Now you work with your project through docker

