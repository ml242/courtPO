require 'cgi'
require 'omdbapi'

class TitlesController < ApplicationController
  def index
    @users = User.all
  end

  def show
    search = params[:q]
    unless search == nil
      results = OMDB.search("#{search}")
      # need to handle these exceptions
        # undefined method `title' for [:title, "The Birdcage"] if there's only one title
        # undefined method `title' for [:response, "False"] if the search returns no results
      if results
        @titles = results.each { |r| puts r.title }
      end
    end
  end
end
