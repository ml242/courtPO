class CommentsController < ApplicationController
  def new
    @comment = Comment.new
    @article_id = params[:id]
  end

  def create
    c1 = Comment.create params[:comment]
    redirect_to "/articles/#{c1.article.id}"
  end

  def update
    c1 = Comment.find(params[:id]).update params[:comment]
    redirect_to "/articles/#{c1.article.id}"
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
