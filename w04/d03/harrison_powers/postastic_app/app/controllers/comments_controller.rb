class CommentsController < ApplicationController
  def new
  end

  def create
    c1 = Comment.create params[:comment]
    redirect_to "/articles/#{c1.article.id}"
  end

  def update
    Comment.find(params[:id]).update params[:comment]
  end

  def edit
    @comment = Comment.find params[:id]
  end

  def destroy
    Comment.find(params[:id]).destroy
    redirect_to '/articles'
  end

  def index
    @comments = Comment.all
  end

  def show
    @comment = Comment.find params[:id]
  end
end
