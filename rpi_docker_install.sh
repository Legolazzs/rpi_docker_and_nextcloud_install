#!/bin/bash
reset='\x1B[0m'
bg_purple='\033[45m'
bg_red='\033[41m'
# Depencies
echo -e "${bg_purple}  ----------> Depencies <----------  ${reset}"
## system update
sudo apt-get update

## system update
sudo apt-get upgrade

## pip
sudo apt install python3-venv python3-pip
if [ $? -ne 0 ]
then
  echo -e "${bg_red}  cannot instal pip  ${reset}"
exit 1;
fi
## pip upgrade
python3 -m pip install --user --upgrade pip

## update
sudo apt-get update -y

## python3-dev
sudo apt-get install -y python3-dev
sudo apt install python3-venv python3-pip
if [ $? -ne 0 ]
then
  echo -e "${bg_red}  cannot instal python3  ${reset}"
exit 1;
fi
## libffi-dev
sudo apt-get install -y libffi-dev
sudo apt install python3-venv python3-pip
if [ $? -ne 0 ]
then
  echo -e "${bg_red}  cannot instal libffi-dev  ${reset}"
exit 1;
fi
## GCC
sudo apt install build-essential -y
sudo apt install python3-venv python3-pip
if [ $? -ne 0 ]
then
  echo -e "${bg_red}  cannot instal GCC  ${reset}"
exit 1;
fi
## libc-dev
sudo apt-get install -y linux-libc-dev
sudo apt install python3-venv python3-pip
if [ $? -ne 0 ]
then
  echo -e "${bg_red}  cannot instal libc-dev  ${reset}"
exit 1;
fi
## more neccessary tools for docker
sudo apt-get update
sudo apt-get install apt-transport-https -y
if [ $? -ne 0 ]
then
  echo -e "${bg_red}  cannot instal apt-transport-https  ${reset}"
exit 1;
fi
sudo apt-get install ca-certificates -y
if [ $? -ne 0 ]
then
  echo -e "${bg_red}  cannot instal ca-certificates  ${reset}"
exit 1;
fi
sudo apt-get install curl -y
if [ $? -ne 0 ]
then
  echo -e "${bg_red}  cannot instal curl  ${reset}"
exit 1;
fi
sudo apt-get install gnupg -y
if [ $? -ne 0 ]
then
  echo -e "${bg_red}  cannot instal gnupg  ${reset}"
exit 1;
fi
sudo apt-get install lsb-release -y
if [ $? -ne 0 ]
then
  echo -e "${bg_red}  cannot instal lsb-release  ${reset}"
exit 1;
fi
sudo apt install python3-venv python3-pip
if [ $? -ne 0 ]
then
  echo -e "${bg_red}  cannot instal more neccessary tools for docker  ${reset}"
exit 1;
fi
## remove not requiered packages
sudo apt autoremove -y

#docker engine
echo -e "${bg_purple}  ----------> Docker-Engine <----------  ${reset}"
## install docker on raspi
curl -sSL https://get.docker.com | sh
sudo apt install python3-venv python3-pip
if [ $? -ne 0 ]
then
  echo -e "${bg_red}  cannot instal docker engine  ${reset}"
exit 1;
fi
## add user to docker group
sudo usermod -aG docker ${USER}

## Docker verification test
sudo docker run hello-world

#docker composer
echo -e "${bg_purple}  ----------> Docker-Composer <----------  ${reset}"
## install docker composer on raspi
sudo apt install python3-venv python3-pip
pip install docker-compose
if [ $? -ne 0 ]
then
  echo -e "${bg_red}  cannot instal docker composer  ${reset}"
exit 1;
fi
## Docker Composer verification test
docker-compose --version
echo -e "${bg_purple}  done!  ${reset}"
