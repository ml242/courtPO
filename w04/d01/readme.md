f# Homework!

Refactor your Sinatra Programming app in Rails

```
$ rails new programming_app -d postgresql
```

Don't forgot to update your `config/database.yml` file and create your database

Create your `migration` file

```
$ rails g migration create_name_of_table
```


Create your table

```
create_table do :table_name |t|
    t.data_type :column_name
    t.timestamps
end
```

Don't forget to migrate your database!

```
rake db:migrate
```

Create your `model`

```
class ModelName < ActiveRecord::Base
end
```

Update the `db/seed.rb` file to import your programmers using ActiveRecord

Import your programmers

```
rake db:seed
```

Make your routes

`/programmers` should display all your programmers. Call that action `index`

`/programmers/:id` should show a particular programmer.  Call that action `show`

## Extras

`/programmers/new` should display a new programmers form. Call that action `new`

Post the new programmer back to `/programmers` and call that action `create`

Add an `edit` link to the `/programmers/:id` show page

`/programmers/:id/edit` should display a pre-populated form with the programmer's information.
Post the updated form to `/programmers/:id` and call that action `update`

Add a `delete` button to the `/programmers/:id` show page.  A post to `/programmers/:id/delete` should point to an action called `destroy`
