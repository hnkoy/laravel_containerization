# laravel_static_web_site_deploy
This repos is a simple way to deploy laravel static website using docker container with a fresh laravel app
# Steps
create a Dockerfile and the dockerfile will :
- install apache2 and php
- install git,curl,zip,unzip
- install composer
- clone the project on github
- copy a .env file with your all environment variables
- clear all config cache
- update vhost documentRoot
