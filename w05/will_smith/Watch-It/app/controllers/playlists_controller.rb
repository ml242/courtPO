class PlaylistsController < ApplicationController
  def new
    @playlist = Playlist.new
    # this should be created when the user selects a title to watch
  end

  def create
    @playlist = Playlist.new(params[:playlist])
    # this should insert a new playlist into the database with the user_id and title_id attached. What else do I need here?
  end

  def show
    @user = User.find(params[:user_id])
    @playlist = Playlist.find(params[:user_id])
    # this should display the list of titles for the user. what do I need here?
  end

  def edit
    # this should allow the user the ability to select "watched" so that the boolean becomes true instead of false. what do I need here?
  end
end

