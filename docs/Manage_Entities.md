## Description

Simple steps to generate the scaffolding for a new table or entity to add to your database.

## Steps
1. Make sure you have a database, by running `script/setup`
1. Describe the entity name, properties (columns), and types for each property (or column) that you will need.
   Let's use an example.
   - Entity = Version
   - Properties = major, minor, patch, value, created
   - Types = major:integer, minor:interger , patch:integer, value:string, created:datetime
1. Checkout the project and run the rails scaffold command
   Example:
   ```
   script/app-env bin/rails g scaffold Version major:integer minor:integer patch:integer value:string created:datetime
   ```
1. Run the migration locally `script/app-env bin/rails db:migrate`
1. Dump the schema so we can commit the changes : `script/app-env bin/rails db:structure:dump`
1. Commit all changes
1. Test the db setup with `script/setup`

## Notes
- we use `script/app-env` because our entire development setup and tools are using docker containers. `app-env` will help us abstract using these tools.

## Reference
- [Command line scaffold command helps us generate all parts for the new entity, model, migraiton, controller, view, etc](https://guides.rubyonrails.org/command_line.html#rails-generate)
- [Available types to choose from for Properties](https://api.rubyonrails.org/v6.0.1/classes/ActiveRecord/ConnectionAdapters/SchemaStatements.html#method-i-add_column)
