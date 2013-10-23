class WatchItemsController < ApplicationController
  def new
    @watch_item = WatchItem.new
    # this should be created when the user selects a title to watch
  end

  def create
    # user clicks the button that says "Add to list" for a given title
    #   if it doesn't exist
    #     the title needs to be created in the database
    #   user.watch_items.create(title_id: title.id)
    #   user.titles.create
    # imdb_id = params[:imdb_id]

    current_title = Title.where(:imdbID => params[:imdb_id]).first
    if current_title.nil?
      movie_hash = OMDB.title(params[:title])
      title = movie_hash[:title]
      kind = movie_hash[:type]
      poster = movie_hash[:poster]
      plot = movie_hash[:plot]
      imdb_id = movie_hash[:imdb_id]
      new_title = Title.new
      new_title.title = title
      new_title.kind = kind
      new_title.poster = poster
      new_title.plot = plot
      new_title.imdbID = imdb_id
      new_title.save

      watched_title = Title.where(:imdbID => new_title.imdbID).first
    else
      watched_title = Title.where(:imdbID => current_title.imdbID).first
    end


    watch_item = current_user.watch_items.create
    watch_item.title_id = watched_title.id
    watch_item.save
    redirect_to :back
  end

  def show
    @user = User.find(params[:user_id])
    @watch_item = WatchItem.find(params[:user_id])
    # this should display the list of titles for the user. what do I need here?
  end

  def edit
    # this should allow the user the ability to select "watched" so that the boolean becomes true instead of false. what do I need here?
  end
end

