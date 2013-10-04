require 'rubygems'
require 'sinatra'
require 'sinatra/reloader' if development?
require 'yahoofinance'

get '/' do
  quote_type = YahooFinance::StandardQuote
  @params = params
  @stock = params[:stock]
  YahooFinance::get_quotes(quote_type, @stock) do |stock|
    @stock_name = stock.name.to_s
    @stock_symbol = stock.symbol.to_s
    @stock_price = stock.lastTrade.to_s
    @stock_change_points = stock.changePoints
    @stock_change_percent = stock.changePercent
  end
  erb :stock
end