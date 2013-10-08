require 'sinatra'
require 'sinatra/reloader' if development?
require 'rainbow'
require 'yahoofinance'

get '/' do
  @title = "Stock Quotes"
  @company_sym = @params[:company_sym].to_s
  YahooFinance.get_quotes(YahooFinance::StandardQuote, @company_sym) {|i|
    @change = i.change
    @change_pts = i.changePoints
    @change_pct = i.changePercent
    @time = i.time
  }
#   YahooFinance.get_quotes(YahooFinance::HistoricalQuote, @company_sym) {|i|
#     @date = i.date
#     @day_high = i.high
#     @day_low = i.low
#     @volume = i.volume
#     @close = i.close
# YahooFinance::get_historical_quotes( 'YHOO',
#                                       Date.parse( '2005-09-09' ),
#                                       Date.today() ) do |row|
#   puts "YHOO,#{row.join(',')}"
# end
#   r = YahooFinance.get_quotes(YahooFinance::StandardQuote, @company_sym)
#   if !r.nil?
#   @day_high = r[r.keys[0]].dayHigh
# end
  erb :index
end
