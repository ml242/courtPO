require 'sinatra'
require 'sinatra/reloader' if development?
require 'yahoofinance'

get '/' do
  @symbol = 0
  @stock = params[:stock]
  @quote_type = YahooFinance::StandardQuote
erb :stock
end

