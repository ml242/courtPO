require 'sinatra'
require 'sinatra/reloader' if development?
require 'yahoofinance'
require 'active_support/all'
require 'httparty'

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
  TOP_50.each do |x| @top_50 << "<a href=\"?symbol=#{x}\">#{x} : #{YahooFinance::get_quotes(YahooFinance::StandardQuote, x)[x].lastTrade}</a>  |  " end
  if params[:symbol].present?
    @symbol = params[:symbol].upcase
    @quote = YahooFinance::get_quotes(YahooFinance::StandardQuote, @symbol)[@symbol].lastTrade
  	symbol_name = HTTParty.get("http://dev.markitondemand.com/Api/Quote/json?symbol=#{@symbol}")["Data"]["Name"]
  	@articles = ''
  	nyt_hash = HTTParty.get("http://api.nytimes.com/svc/search/v1/article?query=#{@symbol}&sort=newest&api-key=92bd131613a30627da3598919e05551e:10:68215279")["results"]
  	nyt_hash.each do |x| @articles << "<a href=\"#{x["url"]}\">#{x["title"]}</a><br /><br />" end
  end
  erb :quote
end