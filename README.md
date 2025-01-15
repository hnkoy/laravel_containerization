# laravel containerization
This repos is a simple way to containerize a Laravel project using docker container 
# Steps automatization
create a Dockerfile and the docker file will automatically :
- install apache2 and php
- install git,curl,zip,unzip
- install composer
- clone the project from a GitHub repo
- copy a .env file with all your environment variables
- clear all config cache
- update vhost documentRoot
