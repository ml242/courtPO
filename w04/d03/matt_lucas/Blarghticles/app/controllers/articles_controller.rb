class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    article = params[:article]
    a1 = Article.create(article)
    redirect_to("/articles/#{a1.id}")
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
    @article = Article.update(id)
  emd

  def destroy
  end

end