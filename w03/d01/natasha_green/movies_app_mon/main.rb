require 'sinatra'
require 'sinatra/reloader' if development?
require 'httparty'
require 'pry'
require 'json'
require 'cgi'

=begin 
## Refactor the Movies App

##### Make your movies app use a database!

- Create a database called `movies_db`
done
- Create a `movies.sql` file that will create a new table, `movies`, in `movies_db`, and run it.
    - Today we learned to execute .sql files with this command: `psql -d DATABASE_NAME -f FILENAME.sql`
- The `movies` table should contain all of the attributes that display in your movie's show page.

- Add a `save` button to your movie's show page.

    - When a user clicks the `save` button, send a `post` request back to your server that *INSERTS* that particular movie *INTO* the `movies` table of your `movies_db` database.
    - **Hint:** use a hidden field to send back the movie's imdb rating.

- Add a `faves` link to your movies index page.

    - When a user clicks `faves`, display all the movies md that have been saved to your database.

=end 

get '/' do
  erb :index
end

get '/movies/search' do
     @results = params[:query]
     @results = CGI::escape(@results)
    url = "http://www.omdbapi.com/?s=#{@results}"
    response =  HTTParty.get(url)
    json_response = JSON.parse(response)
    @movies = json_response["Search"]
   erb :results
  end

get '/movies/:imdbID' do
    imdbID = params[:imdbID]
    imdbID = CGI::escape(imdbID)
    url = "http://www.omdbapi.com/?i=#{imdbID}"
    response =  HTTParty.get(url)
    @movie = JSON.parse(response)
    
    
    db_connection = PG.connect(:dbname => 'movies_db', :host => 'localhost')
sql = "SELECT * FROM movies"
response = db_connection.exec(sql)
movies = response.entries
 movies.each do |movie|
	title = movies['title']
	year = movies['year']
	rated = movies['rated']
	release = movies['release']
	runtime = movies['runtime']
	genre = movies['genre']
	director = movies['director']
	writer = movies['writer']
	actors = movies['actors']
	plot = movies['plot']
	picture = movies['picture']
 end	
db_connection.close
   erb :movie
end


