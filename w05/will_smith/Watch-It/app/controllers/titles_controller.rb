require 'omdbapi'

class TitlesController < ApplicationController
  def index
    @users = User.all
  end

  def search
    search = params[:q]
    unless search == nil
      results = OMDB.search("#{search}")
      if results == {:response=>"False", :error=>"Movie not found!"}
        flash[:alert] = "No Matches Found! Try again"
        redirect_to '/titles/search'
      elsif results.class == Hash && results != {:response=>"False", :error=>"Movie not found!"}
        @movies = [results]
      else
        @movies = results
      end
    end
  end
#TODO change show to search
  def create
    @title = Title.new(params[:title])
  end
end
