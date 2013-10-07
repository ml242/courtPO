require 'sinatra'
require 'sinatra/reloader' if development?
require 'HTTParty'
require 'pry'
require 'json'
require 'rainbow'

get '/' do
  puts params.to_s.background(:green) # prints out to terminal
  erb :index
end

get '/movies/search' do
  puts params.to_s.background(:green)
  movie_name = params[:title_query]
  if movie_name.split(' ').length > 1
    movie_name_array = movie_hame.split(' ')
    movie_name = ""
    movie_name_array.each do |word|
      movie_name += word + "+"
    end
  else
    movie_name = params[:title_query]
  end
  url = "http://www.omdbapi.com/?s=" + movie_name + "&r=XML"
  response = HTTParty.get(url)
  if response != nil
    @movie_array = response["root"]["movie"]
  else
    @movie_array = ["No movies matched that title!"]
  end
  erb :result
end

get '/movies/:id' do
  id = params[:id]
  response = HTTParty.get("http://www.omdbapi.com/?i=" + id + "&r=XML")
  if response != nil
    @name = response["root"]["movie"]["title"]
    @year = response["root"]["movie"]["year"]
    @rating = response["root"]["movie"]["rated"]
    @released = response["root"]["movie"]["released"]
    @genre = response["root"]["movie"]["genre"]
    @runtime = response["root"]["movie"]["runtime"]
    @director = response["root"]["movie"]["director"]
    @writer = response["root"]["movie"]["writer"]
    @actors = response["root"]["movie"]["actors"]
    @plot = response["root"]["movie"]["plot"]
    name_var = @name
    @search_name = ""
    if name_var.split(' ').length > 1
      movie_name_array = name_var.split(' ')
      movie_name_array.each do |word|
        @search_name += word + "+"
      end
    else
      @search_name = @name
    end
    if response["root"]["movie"]["poster"] != "N/A"
      @poster = response["root"]["movie"]["poster"]
    else
      @poster = "http://www.americanhumanefilmtv.org/wp-content/uploads/2011/11/genericMoviePoster-202x300.jpg"
    end
    @isfull = true
  else
    @isfull = false
  end
@search = "http://www.google.com/search?q=" + @search_name
erb :id_results
end




# get "/" do
#   response = HTTParty.get("http://dev.markitondemand.com/Api/Quote/json?symbol=goog")
#   last_price = response["Data"]["LastPrice"]
#   "The last price of Google was #{last_price}"
# end

# get "/:symbol" do
#   symbol = params[:symbol]
#   url = "http://dev.markitondemand.com/Api/Quote/json?symbol=#{symbol}"
#   response = HTTParty.get(url)
#   lastprice = response["Data"]["LastPrice"]
#   "The last price of #{response["Data"]["Name"]} was #{lastprice}"
# end


