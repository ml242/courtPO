class ArticlesController < ApplicationController
  def new
  end

  def create
    a1 = Article.create params[:article]
    redirect_to "/articles/#{a1.id}"
  end

  def update
    id = params[:id]
    Article.find(id).update params[:article]
    redirect_to "/articles/#{id}"
  end

  def edit
    id = params[:id]
    @article = Article.find(id)
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
