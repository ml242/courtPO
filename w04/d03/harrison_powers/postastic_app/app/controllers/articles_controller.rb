class ArticlesController < ApplicationController
  def new
    @article = Article.new
    @authors = Author.all
  end

  def create
    a1 = Article.create params[:article]
    redirect_to "/articles/#{a1.id}"
  end

  def update
    Article.find(params[:id]).update params[:article]
    redirect_to "/articles/#{params[:id]}"
  end

  def edit
    @article = Article.find params[:id]
  end

  def destroy
    Article.find(params[:id]).destroy
    redirect_to '/articles'
  end

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find params[:id]
  end
end
