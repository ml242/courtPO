class ArticlesController < ApplicationController

  def index
    @articles = Article.order 'id ASC'
  end

  def new
    @article = Article.new
  end

  def create
    Article.create(params[:article])
    redirect_to 'articles'
  end

  def show
    #aise
    @article = Article.find(params[:id])
  end


end
