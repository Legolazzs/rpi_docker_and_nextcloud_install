#!/bin/usr/bash
docker-compose --version
if [ $? -ne 0 ]
then
  echo -e "${bg_red}  docker-compose installation was not succesfull  ${reset}"
exit 1;
fi
cd ~/nextcloud/.examples/docker-compose/insecure/postgres/apache

echo -e "${bg_purple}  ----------> start nextcloud <----------  ${reset}"
docker-compose up -d

echo -e "${bg_red}   you're all done  ${reset}"
