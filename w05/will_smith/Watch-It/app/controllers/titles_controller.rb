require 'omdbapi'

class TitlesController < ApplicationController
  def index
    @users = User.all
  end

  def show
    search = params[:q]
    unless search == nil
      results = OMDB.search("#{search}")
      if results == {:response=>"False", :error=>"Movie not found!"}
      flash.now.alert = "No Matches Found! Try again"
      redirect_to '/titles/show'
      elsif results.class == Hash && results != {:response=>"False", :error=>"Movie not found!"}
        @movie = results
      else
        @movies = results
      end
    end
  end

  def create

    # game_of_thrones = OMDB.title('Game of Thrones')
    @titles = Title.new(params[:title])

  end
end
