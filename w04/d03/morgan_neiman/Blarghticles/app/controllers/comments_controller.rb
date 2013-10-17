class CommentsController < ApplicationController
  def index
    article_id = params[:article_id].to_i
    @comments = Comment.where(article_id: article_id)
  end
  def new
    @comment = Comment.new
    @article_id = params[:article_id].to_i
  end
  def create
    comment = params[:comment]
    article_id = params[:comment][:article_id]
    Comment.create(comment)
    redirect_to("/articles/#{article_id}")
  end
  def edit

  end
  def update

  end
  def destroy

  end
end