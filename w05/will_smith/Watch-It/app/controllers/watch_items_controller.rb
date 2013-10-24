class WatchItemsController < ApplicationController
  def new

  end

  def create
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

    watch_list = []
    current_user.watch_items.each do |item|
      movie_id = item.title_id
      item = Title.find movie_id
      watch_list << item.imdbID
    end

    unless watch_list.include? watched_title.imdbID
      watch_item = current_user.watch_items.create
      watch_item.title_id = watched_title.id
      watch_item.save
      flash[:notice] = "Successfully added #{new_title.title}"
      redirect_to :back
    else
      flash[:notice] = "Already there."
      redirect_to :back
    end

  end

  def update
    @watch_item = current_user.watch_items.find(params[:id])
    @watch_item.watched = true
    @watch_item.save
    redirect_to :back
  end

  def destroy
    @watch_item = current_user.watch_items.find(params[:id])
    @watch_item.destroy

    redirect_to current_user
  end
end

