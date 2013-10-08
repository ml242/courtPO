require 'pg'

db_connection = PG.connect(
    :dbname => 'movies_db',
    :host => 'localhost')

# check the size
sql = "SELECT * FROM movies"
response = db_connection.exec(sql)
puts response.entries.size

sql = "INSERT INTO movies (title, year, genre) VALUES ('#{params['title']}', #{params[year]}, '#{params['genre']}')"

# execute and whatevs
db_connection.exec(sql)

# check the size
sql = "SELECT * FROM movies"
response = db_connection.exec(sql)
puts response.entries.size

# always remember to close
db_connection.close
