require 'yahoofinance'
require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'
require 'rainbow'

quote_type = YahooFinance::StandardQuote

get '/' do
  @symbol = params[:symbol]
end

