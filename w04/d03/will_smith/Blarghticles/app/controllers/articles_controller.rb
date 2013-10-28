class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    id = params[:id]
    @artcile = Article.find(id)
  end

  def edit
    id = params[:id]
    @article = Article.find(id)
  end

  def new
    @article = Article.new
  end

  def create
    title = params[:title]
    body = params[:body]
    text = params[:text]
    Article.create(title, body, text)
    redirect_to('/articles')
  end

  def delete
    Article.find(params[:id]).destroy
    redirect_to('/articles')
  end
end
