# Strapi application

Generic Strapi backend

## Introduction


## Development Notes

### Setup:

#### Install nvm on Debian 10:

    sudo apt install curl
    curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash

#### Use Node version v14.21.2

    nvm install v14.21.2
    nvm use v14.21.2

#### Install yarn

    npm install --global yarn

#### Install dependencies

    cd into/project/root/directory
    yarn

#### Database setup

This project uses PostgreSQL. Install:

    apt install postgresql postgresql-contrib

Create the user / database to use for testing by executing the following script:

    $ ./scripts/db_local_create.sh

You will need some environment variables to connect to the database.
If you kept everything the same from the above db_local_create.sh script, you can use this example env file:

    $ cp .env.local.example .env

Otherise, you can copy that file and then fill in with the appropriate credentials.

#### Run the application locally (development)

    cd into/project/root/directory
    yarn develop
