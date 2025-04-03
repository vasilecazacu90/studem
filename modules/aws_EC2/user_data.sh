#!bin/bash
exec > /var/log/user-data.log 2>&1
set -x

sudo apt-get update 
sudo apt-get install -y git nodejs nginx npm
cd /home/ubuntu/
sudo git clone https://github.com/Na7aly/studem.md.git
cd studem.md
sudo sed -i 's|tf https://Na7aly.github.io/studem.md/"|"."|' package.json
sudo sed -i 's|"react-scripts start"|"PORT=80 react-scripts start"|' package.json

#boost npm install
sudo fallocate -l 1G /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
sudo swapon --show