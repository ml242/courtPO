class ArticlesController < ApplicationController

  def index
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.create(params[:article])
    redirect_to("/articles/#{@article.id}")
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    id = params[:id]
    article = Article.find(id)
    article.title = (params[:article][:title])
    article.body = (params[:article][:body])
    article.save
    redirect_to("/articles/#{article.id}")
  end

  def delete
    id = params[:id]
    article = Article.find(id)
    article.destroy
  end

end
