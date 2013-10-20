class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    article = params[:article]
    Article.create(article)
    redirect_to('/articles')
  end

  def show
    @id = params[:id]
    @article = Article.find(@id)
  end

  def edit
    id = params[:id]
    @article = Article.find(id)
  end

  def update
    id = params[:id]
    article = params[:article]
    Article.update(id, article)
    redirect_to("/articles/#{id}")
  end

  def destroy
    id = params[:id]
    article = Article.find(id)
    article.destroy
    redirect_to('/articles')
  end

end
