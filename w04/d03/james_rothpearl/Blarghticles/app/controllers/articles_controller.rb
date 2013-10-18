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
  end

  def destroy
  end

end
