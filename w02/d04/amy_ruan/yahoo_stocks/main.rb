require 'sinatra'
require 'sinatra/reloader' if development?
require 'yahoofinance'

def find_ticker_price(stock)
   x = nil
   YahooFinance.get_standard_quotes(stock).each do |symbol, quote|
    x = quote.lastTrade
end
   x
end

def find_ticker_date(stock)
  date = Time.new
  YahooFinance.get_standard_quotes(stock).each do |symbol, quote|
  date = quote.date
  end
  date
end

p find_ticker_date("JPM")


get '/' do
@stock = params[:ticker].to_s.upcase
@price = find_ticker_price(@stock)
@date = find_ticker_date(@date)
erb :stocks
end