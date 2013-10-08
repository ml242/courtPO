require 'sinatra'
require 'sinatra/reloader' if development?
require 'json'
require 'httparty'
require 'open-uri'
require 'pg'
require 'pry'

get '/' do
	@title = 'RMDB'
	erb :index
end

post '/movies/search' do
	@title = "Search for #{params[:movie_search]}"
	search_request = URI::encode(params[:movie_search])
	omdb_result = HTTParty.get("http://www.omdbapi.com/?s=#{search_request}")
	@parsed_result = JSON.parse(omdb_result)["Search"]
	erb :search_result
end

get '/movies/faves' do
	db_connection = PG.connect(
		:dbname => 'movies_db',
		:host => 'localhost'
	)
	sql = "SELECT * FROM movies"
	response = db_connection.exec(sql)
	db_connection.close
	@movies = response.entries
	erb :faves
end

get '/movies/:imdbID' do
	imdbID = params[:imdbID]
	omdb_result = HTTParty.get("http://www.omdbapi.com/?i=#{imdbID}&plot=full&tomatoes=true")
	@parsed_result = JSON.parse(omdb_result)
	erb :movie_info
end

post '/movies/add' do
	db_connection = PG.connect(
		:dbname => 'movies_db',
		:host => 'localhost'
	)

	params.each do |k, v|
		params[k] = db_connection.escape(v)
	end

	imdbID = params[:imdbID]
	title = params[:title]
	year = params[:year]
	rated = params[:rated]
	genre = params[:genre]
	director = params[:director]
	writer = params[:writer]
	actors = params[:actors]
	plot = params[:plot]


	sql = "INSERT INTO movies (imdbID, title, year, rated, genre, director, writer, actors, plot)
		VALUES ('#{imdbID}','#{title}','#{year}','#{rated}','#{genre}','#{director}','#{writer}','#{actors}','#{plot}')"
	db_connection.exec(sql)
	db_connection.close
	erb :add
end
