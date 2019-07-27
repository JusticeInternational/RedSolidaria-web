# README

This app is intended for service providers and NGO's that will help us maintain
services for caminantes.

Things you might need to know on this project:

* We need Ruby and Docker, most any latest version should do, check the `.ruby-version` file to see the current version of ruby that we're using. Use rvm so that the right ruby is used.

* This app is written in rails.

* This apps CI/CD scripts are all located in `script/*` and you can use this for local or CI/CD dev.

* Order of operations for the `script/*` files are:
  - `script/bootstrap` if your first getting started
  - `script/setup` if you haven't setup the db
  - `script/cibuild` to build all the things
  - `script/test` if your testing changes
  - `script/server` if you want an instance of the app running
  - `script/vendor` to maintain external dependencies
  - all other scripts help support the files in `script/*`

* Deployment instructions are still to come

* ...

## Creating tables
1. Run `script/setup` to get the database running
1. Use `script/app-env` to access the running container
1. Use `rails g model ...` to create any new tables or modify models
1. Apply and dump the schema with `rake db:migrate db:structure:dump`
# Troubleshooting

## Can't find gem bundler
https://bundler.io/blog/2019/01/04/an-update-on-the-bundler-2-release.html
```
gem install bundler -v '1.16.1'
```

## bundle fails to install mysql2
https://stackoverflow.com/questions/30834421/error-when-trying-to-install-app-with-mysql2-gem
```
bundle config --local build.mysql2 "--with-ldflags=-L/usr/local/opt/openssl/lib --with-cppflags=-I/usr/local/opt/openssl/include"
```
