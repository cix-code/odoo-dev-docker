# OdooDevDocker

## Description

This project allows you to quickly configure your environment for Odoo development.
It builds a docker image based on `debian:buster-slim` with all necessary tools and packages for running Odoo. 

## Prerequisites

1. Running Linux
2. docker and docker-compose are installed 

## How to use it? 

1. Clone the current repository
2. Navigate into the root folder of this repository and run the `setup.sh` script.
  **Note:** The preconfigured version of Odoo is 15.0. 
  To use version 14.0, edit the `.env.sample` file before running `setup.sh` script.
  ```shell
./setup.sh
  ```
3. If setup was successful, start the docker compose:
```shell
docker-compose up
```
4. Open http://localhost:8069

## What next?

1. Configure the root project in your editor.
2. Create or copy your custom modules into addons folder (created by the `setup.sh` script)
3. Configure your python debugger to use the current docker-compose configuration. 