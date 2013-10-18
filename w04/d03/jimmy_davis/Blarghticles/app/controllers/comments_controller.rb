class CommentsController < ApplicationController

  def index
    @comments = Comment.all
  end

  def new
    @comment = Comment.new
  end

  def create
    # house = params[:house]
    # House.create(house)
    # redirect_to('/comments')
  end
end
