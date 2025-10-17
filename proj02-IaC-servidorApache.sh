#!/bin/bash

# estar logado como root
# verificar e atualizar Ubuntu
# instalar Apache e unzip
apt-get update upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

# fazer download de aplicação web 'zipada' na pasta 'temp'
# quando descompactar, irá para pasta '/linux-site-dio-main
cd /temp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

# copiar a pasta 'linux-site-dio-main' para servidor web
cd linux-site-dio-main
cp -R * /var/www/html
