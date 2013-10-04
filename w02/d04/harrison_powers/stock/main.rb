require 'sinatra'
require 'sinatra/reloader' if development?
require 'yahoofinance'
require 'active_support/all'

TOP_50 = [
	"AAPL",
	"AIG",
	"CA",
	"NLY",
	"ORCL",
	"ROST",
	"SNDK",
	"SNV",
	"TJX",
	"WEN",
	"YHOO",
	"FITB",
	"TXN",
	"CSCO",
	"GT",
	"HBAN",
	"IBM",
	"JPM",
	"KEY",
	"KRFT",
	"LVS",
	"SBUX",
	"SCHW",
	"TIVO",
	"COP",
	"DE",
	"FOXA",
	"WFC",
	"MU",
	"PBR",
	"QIHU",
	"SPF",
	"TIBX",
	"BA",
	"CMCSA",
	"DIS",
	"DTV",
	"EXC",
	"HCP",
	"KMI",
	"KR",
	"LUV",
	"NKE",
	"SE",
	"SLB",
	"V",
	"OPK",
	"WCRX",
	"LLY",
	"MDLZ"
]

get '/' do
	@top_50 = ''
  TOP_50.each do |x| @top_50 << "#{x} : <strong>#{YahooFinance::get_quotes(YahooFinance::StandardQuote, x)[x].lastTrade}</strong>  |  " end
  if params[:symbol].present?
    @symbol = params[:symbol].upcase
    @quote = YahooFinance::get_quotes(YahooFinance::StandardQuote, @symbol)[@symbol].lastTrade
  end
  erb :quote
end