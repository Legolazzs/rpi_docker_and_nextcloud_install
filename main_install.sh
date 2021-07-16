#!/bin/bash
reset='\x1B[0m'
bg_purple='\033[45m'
bg_red='\033[41m'

echo -e "${bg_purple}  ----------> docker installation <----------  ${reset}"
bash rpi_docker_install.sh

echo -e "${bg_purple}  ----------> install git <----------  ${reset}"
sudo apt-get update
sudo apt-get upgrade
sudo apt install git-all
sudo apt-get install install-info
git clone git://git.kernel.org/pub/scm/git/git.git

echo -e "${bg_purple}  ----------> download nextcloud <----------  ${reset}"
cd ~
git clone https://github.com/nextcloud/docker.git nextcloud
cd nextcloud/.examples/docker-compose/insecure/postgres/apache

echo -e "${bg_purple}  ----------> start nextcloud <----------  ${reset}"
docker-compose up 
