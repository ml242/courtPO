class CommentsController < ApplicationController

  def index
  end

  def show
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.create(params[:comment])
    redirect_to("/articles")
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    id = params[:id]
    comment = Comment.find(id)
    comment.body = (params[:article][:body])
    article.save
    redirect_to("/articles/#{article.id}")
  end

  def delete
    id = params[:id]
    comment = Comment.find(id)
    comment.destroy
  end

end
