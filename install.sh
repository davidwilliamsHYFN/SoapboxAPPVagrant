#!/bin/sh

sudo apt-get install -y build-essential

curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y nodejs

npm install /vagrant

npm run build