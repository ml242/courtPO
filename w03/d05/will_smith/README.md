Will Smith

# Adventures in Programming

In this assignment we're going to create a simple Sinatra App that display's some programmers' names, profile pic and a link to their twitter pages.

## the app
Create a new Sinatra app called `programming_app`

## the db
####Make sure your Postgres server is running.

Create a new `database` called `programming_db`

Create a new table in `programming_db` called `programmers`, and give the table the following columns:

* `id`
* `name`
* `twitter_pic`
* `twitter_username`

## the import
`programmers.csv` contains the information you need, but you want these entries inserted into your database -- automate it!

Create a new ruby file called `import.rb` that will read in each line of programmer details from `programmers.csv`, and populate your `programmers` table using `active_record`

## the routes

* `/programmers` will list all programmers' names

* `/programmers/:id` will display one programmer
   * So, `/programmers/1` will show the first programmer's information

## Extras

###Find out who all of these people are!

Read about them! Check out their blogs! Peek at their code!

Linking to twitter is one thing, but it'd be great to also include each programmer's github username.

* Add a `github_username` column to the `programmers` table.
   * Add a new route: `programmers/:id/edit`
   * Create an `edit` link to display next to each programmer's name that will link to that programmer's `edit` page that will allow you to update their information.
   * Update their information with github accounts

Modify your `import.rb` file so that when it runs, it asks or prompts for the location of a .csv file that it should read in to the database.

Create a Rakefile for this project and make your `import.rb` into a Rake task.

Check out the [github_api] [github_api] gem.

`Github.repos.list(user: 'wycats')` returns a `Github::ResponseWrapper`

* Play around with it in pry and try to get a list of repos belonging to a programmer using their github username.
   * Require the gem in your `main.rb` and see if you can get the programmers' github repos to appear on their profile pages.

####Extra, extra
copy `programming_app` to your `~/ga_wdi/heroku` folder and deploy it to Heroku!


# Resources
- [ActiveRecord](http://guides.rubyonrails.org/active_record_basics.html)
- [sinatra-activerecord](https://github.com/bmizerany/sinatra-activerecord)
- [sinatra](http://www.sinatrarb.com/intro.html)
- [github_api]
- [programmers.csv](ASSIGNMENT_FILES/programmers.csv)

[github_api]: https://github.com/peter-murach/github