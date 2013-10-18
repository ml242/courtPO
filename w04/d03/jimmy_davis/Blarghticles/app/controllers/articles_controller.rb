class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    article = params[:article]
    id = params[:id]
    Article.create(article)
    redirect_to("/articles/#{id}")
  end

  def show
    id = params[:id]
    @article = Article.find(id)
  end

  def edit
    id = params[:id]
    @article = Article.find(id)
  end

  def update
    id = params[:id]
    title = params[:title]
    body = params[:body]
    article = Article.find(id)
    article.title = title
    article.body = body
    article.save
  end

  def destroy
    id = params[:id]
    @delete_article = Article.delete(id)
    redirect_to('/articles')
  end

end
