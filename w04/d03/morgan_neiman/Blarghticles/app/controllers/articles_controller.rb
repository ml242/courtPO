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
    id = params[:id].to_i
    @article = Article.find(id)
  end
  def edit
    id = params[:id].to_i
    @article = Article.find(id)
  end
  def update
    article = params[:article]
    id = article[:id].to_i
    to_edit = Article.find(id)
    to_edit.update_attributes(article)
    redirect_to("/articles/#{id}")
  end
  def destroy
    id = params[:id].to_i
    article = Article.find(id)
    article.destroy
    redirect_to('/articles')
  end
end