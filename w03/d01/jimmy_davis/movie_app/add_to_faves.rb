# require 'pg'

# db_connection = PG.connect(
#     :dbname => 'movies_db',
#     :host => 'localhost')

# sql = "SELECT * FROM movies"
# response = db_connection.exec(sql)
# response.entries

# # Title, Year, Rated, Released, Runtime, Genre, Director, Writer, Actors and Plot

# # for HW will need: VALUES ('#{params['name']}')

# sql = "INSERT INTO movies (title, year, rated, released, runtime, genre, director, writer, actors, plot) VALUES ('#{params[:title]}', #{params[:year]}, '#{params[:rated]}', '#{params[:released]}', '#{params[:runtime]}', '#{params[:genre]}', '#{params[:director]}', '#{params[:writer]}', '#{params[:actors]}', '#{params[:plot]}')"

# response = db_connection.exec(sql)
# response.entries


# db_connection.close


