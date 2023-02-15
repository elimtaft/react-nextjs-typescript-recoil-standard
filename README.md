# React / Next.js / TypeScript / Recoil Standard Project Template


## Development Notes


### Setup:


#### Install docker and docker-compose

    https://docs.docker.com/engine/install/debian/
    https://docs.docker.com/compose/install/

#### Install npm and yarn

For Debian:
`sudo apt install npm`
`sudo npm install -g yarn`

#### Application Environment Variables

    cd frontend
    cp env.sample .env.local

Fill out the .env.local file accordingly.

*NOTE 2: If you include the sample db data (next section), you won't need to change the value of STRAPI_API_TOKEN. If you don't
include the sample db data, you need to create an API Token in Strapi before things will work properly. After the "Run" section
below, log into Strapi and navigate to Settings -> Global Settings -> API Tokens. Create an entry.  Upon save, you will be
presented with a token. Place that token as the value of STRAPI_API_TOKEN and then restart the server for it to apply.*


#### Docker Environment Variables

    cd frontend/docker/
    cp env.sample.development local.env

Modify the local.env file as needed.

*NOTE: If you want Strapi and the local database to be pre-populated with some sample data, uncomment the following line in the .env file:*

    # INCLUDE_SAMPLE_DATA="-with-sample-data"

Only use the init-with-sample-data.sql LOCALLY. This file is intended for local development demo purposes, so that you can see Strapi and a local authentication database already set up.
This should *not* be used for production builds.
For more information, see the section [Using Initial DB Data](#using-initial-db-data) below.

Lastly, call this script:

    ./create-env.sh


### Build

Build the containers as follows:

    yarn install
    cd backend/strapi-backend
    yarn install
    cd -
    cd docker/
    ./build.sh all -d

This will get you a local development setup with hot reload on the src/ directory.

Note: These commands assume you have set up an AWS repository for hosting / tagging built images.
Setting that up is beyond the scope of this project.
If you have not done that, and just want to run this locally, you can add an additional flag to the build command above:

    ./build.sh all -dn


### Production Build

To get a production build:

    cd docker/
    ./build.sh all -d
    ./prod.sh

This may require additional testing.


<a name="using-initial-db-data"></a>
### Using Initial DB Data

The PostgreSQL Docker container is set up to run any .sql scripts located in /docker-entrypoint-initdb.d/ on the server, but ONLY when it is a new install.
It will NOT work for existing databases.

We use this in development so that we can pass around the most current schema and data changes needed for development.

If you make any changes to Strapi (schema or data), you should also update this file.


##### HOW TO UPDATE THIS FILE:

1\. Export the DB data:

    docker exec -i sampleproj-db-strapi pg_dump -U strapiuser -d strapidb > export.sql

2\. Copy the contents of export.sql into this file BELOW WHERE IT SAYS "COPY UPDATED SQL DUMPS BELOW"

3\. Replace all occurences of 'public.' with '\__STRAPI_DB_SCHEMA__.' (without quotes but with the dot)

4\. Replace all occurences of 'strapiuser' with '\__STRAPI_DB_USER__' (without quotes)

    Note: verifty that you did not also change the grants at the top of the file.

5\. Save the file


##### HOW TO IMPORT THIS FILE:

NOTE: You will lose ALL local Strapi data you have in your database.

1\. Stop the containers if they are running.

2\. Remove db-strapi's Container, volume, and image:

    docker rm sampleproj-db-strapi
    docker volume rm sampleproject_db-strapi

3\. Re-build the db-strapi stuff:

    cd frontend/docker/
    ./build.sh db-strapi -d

4\. Go ahead and run everything:

    ./dev.sh


### Run

Run the containers as follows:
(BUILD REQUIRED)

    ./dev.sh

The website can be accessed at http://localhost.
The strapi backend can be accessed at http://localhost:1337/admin


### Local Dev Credentials


#### Main site login

Visit http://localhost/login.

If you included the sample data mentioned under the "Environment Variables" section, you have the following login available:

    ** THIS IS FOR LOCAL DEVELOPMENT ONLY**

    Username: username
    Password: password

If not, or to create a a new user:

    cd docker/
    ./prisma.sh

Now visit http://localhost:5555 and create a user / password.

*Note 1*: Username and password must be at least 6 characters long in order to pass the front-end form validation.

*Note 2*: Password must be a bcrypt hash generated password (https://bcrypt-generator.com/).


#### Strapi Login

Visit http://localhost/admin/auth/login.

If you included the sample data mentioned under the "Environment Variables" section, you have the following login available:

    ** THIS IS FOR LOCAL DEVELOPMENT ONLY**

    Username: admin@some-domain.com
    Password: Asdfasdf1


### Debugging

Use [This guide](https://nextjs.org/docs/advanced-features/debugging) for debugging Next.JS applications.
Note that under the "Server-side code", for passing the "--inspect" flag to "next dev", we've set up a helper:

    cd docker/
    ./inspect.sh


### Unit Testing

**You should add / improve unit tests with every commit**

We use Jest and React Testing Library for unit testing.

- [Jest](https://jestjs.io/#use) is a unit testing framework developed by Facebook for ReactJS projects.
- [React Testing Library](https://testing-library.com/docs/react-testing-library/intro/) is a testing library that provides an API for working with React components.

To run unit tests, the containers must already be build using the build.sh script mentioned above.
Then, you can run unit tests as follows (BUILD REQUIRED):

    cd docker/
    ./test.sh


### Static Analysis Tools

**You should run all of these before committing any code**


#### Prettier

[Prettier](https://www.npmjs.com/package/prettier) is used to format our code according to the [Airbnb JavaScript Style Guide](https://airbnb.io/javascript/react/). To run prettier (BUILD REQUIRED):

    cd docker/
    ./format.sh

This tool's configuration file is [.prettierrc](./.prettierrc) in the project's root directory.


#### ESLint

[ESLint](https://www.npmjs.com/package/eslint) is used to check our code for various issues code / style issues. To run eslint (BUILD REQUIRED):

    cd docker/
    ./lint.sh

This tool's configuration file is [.eslintrc](./.eslintrc) in the project's root directory.


#### jscpd

[jscpd](https://www.npmjs.com/package/jscpd) is used to detect copy/paste duplicate code.
To run jscpd (BUILD REQUIRED):

    cd docker/
    ./jscpd.sh


### Prisma Studio

Prisma is the ORM that we use for database communication.
They provide a UI called "Prisma Studio" if you want to enter values manually into database tables.
To access Prisma Studio, first run the project in development mode as described above. Then:

    cd docker/
    ./prisma.sh

Then visit http://localhost:5555


### State Management (React / Recoil)

We use Recoil for managing global state for the application.
We use React for managing local state of individual components when global state is not needed.
Here are some good React and Recoil tools for debugging React and Recoil:

React DevTools Extension:
 - [React DevTools Extension for Chrome](https://chrome.google.com/webstore/detail/react-developer-tools/fmkadmapgofadopljbjfkapdkoienihi?hl=en)
 - [React DevTools Extension for Firefox](https://addons.mozilla.org/en-US/firefox/addon/react-devtools/)

Recoil DevTools Extension:
 - [Recoil DevTools Extension for Chrome](https://chrome.google.com/webstore/detail/recoilize/jhfmmdhbinleghabnblahfjfalfgidik?hl=en)


### Auth Notes

Next.js discusses some different authentication patterns [here](https://nextjs.org/docs/authentication).
We've opted to use [iron-session](https://github.com/vvo/iron-session) for now because of it's simplicity.
Obviously we can remain open to alternatives.


### Style Standards:

We use the [Airbnb JavaScript Style Guide](https://airbnb.io/javascript/react/).

Both ESLint are Prettier are configured to check code against this standard (See sections "ESLint" and "Prettier" above for usage information)

Additional notes about the naming of classes / components / functions / files based on this standard:

 - Variable names:
   - Classes and Components are PascalCase
   - Instances of Classes or Components are camelCase
   - Functions that return Components are PascalCase
   - Other Functions are camelCase
 - File names:
   - If the file contains a default export, their name should match what is expored (PascalCase.ts/x for classes and components, camelCase.ts/x for functions)
   - If an index.tsx file's default export is a Component, its parent directory should be ComponentName.
   - If the file does nto contain a default export (like constants.ts), camelCase.ts/x should be used.
 - Exceptions:
   - Filenames under the the pages/ and public/  directories are excluded from this. These use lowercase-url-formats.
   - FIlenames in the root directory are excluded from this, as many tools we use search for config files named a certain way that don't follow this convention. (ed

Concerning CSS:
 - We allow one global CSS file (public/css/global.css) for really global rules (like html, body, etc.).
 - Other than that, we use CSS Modules so that styles are locally scoped to the component that needs them. If you have generic components that are extended, you can also extend styles from that generic component in order to re-use styles. See ["Composing from other files"](https://github.com/css-modules/css-modules#composing-from-other-files).
 - Despite CSS's recent improvements, we still use Sass because there remain some slight improvements over native CSS. See [this article](https://blog.bitsrc.io/will-scss-be-replaced-by-css3-754842d6b681) for some of those reasons. This is becoming more subjective, so let's remain open to change on this point.
 - Because we follow Airbnb's guidlines, concerning SASS, we use SCSS syntax and not SASS native syntax([link](https://github.com/airbnb/css#sass)].
