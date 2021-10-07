#!/bin/bash

mkdir data && echo "DB data folder created"
mkdir odoo_web_data && echo "Odoo web data folder created"
cp .env.sample .env && echo ".env file created"
cp conf/odoo.conf.sample conf/odoo.conf && echo "odoo.conf file created"

echo "Creating addons folder"
mkdir addons
touch addons/requirements.txt

echo "Cloning Odoo 15.0 into ./odoo folder"
#mkdir odoo \
#  && cd odoo \
#  && git init \
#  && git remote add -t 15.0 -f origin https://github.com/odoo/odoo.git \
#  && git checkout 15.0 \
#  && cd ..

git clone https://github.com/odoo/odoo.git --branch 15.0 --single-branch --depth 1 odoo
#git clone https://github.com/odoo/odoo.git odoo && cd odoo && git checkout 15.0 && cd ..

echo "Building docker image"
docker-compose build

docker network create odoo_dev && echo "odoo_dev docker network created successfully"
