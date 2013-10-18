class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def new
    @comment = Comment.new
  end

  def create
    comment = params[:comment]
    article_id = params[:comment][:article_id]
    Comment.create(comment)
    redirect_to "/articles/#{article_id}"
  end

end
