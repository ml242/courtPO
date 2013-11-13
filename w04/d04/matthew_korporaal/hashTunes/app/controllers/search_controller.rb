class SearchController < ApplicationController
  def search
    last_search = session[:last_search]
    #  last_search = CGI::escape(last_search)
     @image_url = ""
    #  @image_url = HTTParty.get("http://imagehash.herokuapp.com/search?&q=#{last_search}&type=json")
  end

  def results
    query = params[:q]

    session[:last_search] = query
    if session[:number_of_searches] == nil
      session[:number_of_searches] = 0
    end
    session[:number_of_searches] = session[:number_of_searches] + 1

    if session[:searches] == nil
      session[:searches] = []
    end
    session[:searches] << query

    render text: "You searched for #{query}, #{session.to_s}"
  end
end
