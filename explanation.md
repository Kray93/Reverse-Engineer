DESCRIPTION: this is an explanation of files mainly to decride the relationships between CONTROLLERS, MODELS and VIEWS.
INSTALLATION: npm init, npm install (dependencies)
DEPENDENCIES: express, express-handlebars, mysql, mysql2, sequelize

FILE TREE:
    config
       config.json
    controllers
       burgers_controller.js
    db
       schema.sql
       seed.sql
    models
       burger.js
       index.js
    node_modules
    public/assets
       CSS
          style.css
       images
          burger.png
          hexi.psd
       js
          script.js
    views
       layouts
          main.handlebars
       index.handlebars
    package-lock.json
    package.json
    server.js
    .gitignore
    explanation.md
    README.md


CONFIG folder:
    contains config.json for middleware
config.json
    configures MySQL and links to users database and host. A non-public folder.

CONTROLLERS folder:
    contains controller routes. help communicate between models and views folders.
burgers_controller.js
    sets up routes and exports them. controlls what routes to follow.

DB folder:
    contains the database sql files.
schema.sql
    creates database and tables within.
seed.sql
    creates insertable objects for the table.

MODELS folder:
    contains the definition of the structure of data.
burger.js
    uses sequelize to change data. then returns and exports that data to the database.
index.js
    defines how we want sequelize to be structured in the database. uses fs to read files inside models file. uses path to join the path of each file in the directory.

PUBLIC/ASSETS folder:
    contains all public files to be seen by client-end.
CSS/style.css
    cascading style sheet that defines webpage front end.
images
    self-explanatory
js/script.js
    on-click event for form

VIEWS folder:
    contains handlebars which display the front end form the database (controllers and models).
layouts/main.handlebars
    the body of the html that is viewed client side.
index.handlebars
    defines the function to be executed for each form submission and on-click.

NODE_MODULES folder:
    libraries that you can use throuout your application. acossiated with dependencies.
package-lock.json
    comes from using NPM. versions, tests, ect...
package.json
    instructions for NPM packages and general information on app.
server.js
    used to "require" all dependencies. uses express to use routes from controllers. sets up port connection. syncs the database. 