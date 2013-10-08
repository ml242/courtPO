require 'sinatra'
require 'sinatra/reloader' if development?
require 'httparty'
require 'json'
require 'pg'

COLOR = ["#FFBF00", "#FACADE","#0080FF","#01DF3A","#FF0080"]

get '/movies' do
  @color = COLOR.sample
  erb :index
end

get '/movies/search' do
  @color = COLOR.sample
  @movie=params[:query]
  @movie.to_s.capitalize!
  @movie.gsub!(" ","%20")
  response = HTTParty.get("http://www.omdbapi.com/?s=" + @movie)
  @results_parsed = []
  @search_parsed = JSON.parse(response)["Search"]
  @search_parsed.each do |x| @results_parsed << x end
  erb :movies
end

get '/movies/:imdbiD' do
  @color = COLOR.sample
  @id = params[:imdbiD].to_s
  response = HTTParty.get("http://www.omdbapi.com/?i=" + @id)
  @title = JSON.parse(response)["Title"]
  @year = JSON.parse(response)["Year"]
  @rated = JSON.parse(response)["Rated"]
  @released = JSON.parse(response)["Released"]
  @runtime = JSON.parse(response)["Runtime"]
  @genre = JSON.parse(response)["Genre"]
  @director = JSON.parse(response)["Director"]
  @writer = JSON.parse(response)["Writer"]
  @actors = JSON.parse(response)["Actors"]
  @plot = JSON.parse(response)["Plot"]
  @poster = JSON.parse(response)["Poster"]
  @response_2 = JSON.parse(response)["Response"]
  erb :movies_info
end

post '/movies/:imdbiD' do
  @color = COLOR.sample
  @id = params[:imdbiD].to_s
  response = HTTParty.get("http://www.omdbapi.com/?i=" + @id)
  @title = JSON.parse(response)["Title"].gsub("/","//")
  @year = JSON.parse(response)["Year"]
  @rated = JSON.parse(response)["Rated"]
  @released = JSON.parse(response)["Released"]
  @runtime = JSON.parse(response)["Runtime"]
  @genre = JSON.parse(response)["Genre"]
  @director = JSON.parse(response)["Director"]
  @writer = JSON.parse(response)["Writer"]
  @actors = JSON.parse(response)["Actors"]
  @plot = JSON.parse(response)["Plot"]
  @poster = JSON.parse(response)["Poster"]
  @response_2 = JSON.parse(response)["Response"]

  db_connection = PG.connect(
    :dbname => 'movies_db',
    :host => 'localhost')

  sql = "INSERT INTO movies(imdbID, title, year, rated, released,
  runtime, genre, director, writer, actors, plot, poster_link)
  VALUES ('#{@id}','#{@title}','#{@year}','#{@rated}','#{@released}',
    '#{@runtime}','#{@genre}','#{@director}','#{@writer}',
    '#{@actors}','#{'@plot'}','#{@poster}')"
  response = db_connection.exec(sql)
  # @results = response.entries[0].to_s
  erb :post_movies_info
end

get '/movies/:imdbiD/poster_link' do
  @color = COLOR.sample
  @id = params[:imdbiD].to_s
  response = HTTParty.get("http://www.omdbapi.com/?i=" + @id)
  # @imdbiD_parsed = JSON.parse(response)["imdbID"]
  @poster = JSON.parse(response)["Poster"]
  @title = JSON.parse(response)["Title"]
  erb :main_redirect_pic
end

get '/favorites' do
  db_connection = PG.connect(
    :dbname=>'movies_db',
    :host=>'localhost')
  sql = "SELECT * FROM movies"
  response = db_connection.exec(sql)
  db_connection.close
  results = response.entries


  results_whole = []
  i = 0
    while i < results.length
      results_list = []
      results[i].each do |x,y|
      results_list << "#{x} : #{y}"
    end
    results_whole << results_list
    i += 1
    end
    p results_whole.to_s
end


