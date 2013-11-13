class CommentsController < ApplicationController

  def index
    @comments = Comment.order 'id ASC'
  end

  def new
    @comment = Comment.new
  end

  def create
    Comment.create(params[:comment])
    redirect_to 'comments'
  end
end
