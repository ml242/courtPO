# Week 3 Day 1 Homework!

## Whitespace Kills

Make **sure** that your sublime user settings (`⌘`-`+,`) include the following settings, which target and normalize many white-space inconsistencies:
[https://gist.github.com/phlco/6871610](https://gist.github.com/phlco/6871610)

## Refactor the Movies App

##### Make your movies app use a database!

- Create a database called `movies_db`

- Create a `movies.sql` file that will create a new table, `movies`, in `movies_db`, and run it.

    - Today we learned to execute .sql files with this command: `psql -d DATABASE_NAME -f FILENAME.sql`

- The `movies` table should contain all of the attributes that display in your movie's show page.

- Add a `save` button to your movie's show page.

    - When a user clicks the `save` button, send a `post` request back to your server that *INSERTS* that particular movie *INTO* the `movies` table of your `movies_db` database.
    - **Hint:** use a hidden field to send back the movie's imdb rating.

- Add a `faves` link to your movies index page.

    - When a user clicks `faves`, display all the movies that have been saved to your database.
