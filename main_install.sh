#!/bin/bash
reset='\x1B[0m'
bg_purple='\033[45m'
bg_red='\033[41m'

echo -e "${bg_purple}  ----------> docker installation <----------  ${reset}"
bash rpi_docker_install.sh


echo -e "${bg_purple}  ----------> download nextcloud <----------  ${reset}"
cd ~
git clone https://github.com/nextcloud/docker.git nextcloud
sudo reboot
