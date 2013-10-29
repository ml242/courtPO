class ArticlesController < ApplicationController

  def index
    @all_articles = Article.order("created_at DESC").all
  end

  def new
    @article = Article.new
  end

  def create
    Article.create(params[:article])
    redirect_to("/articles")
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    Article.update(params[:id], params[:article])
    redirect_to("/articles/#{params[:id]}")
  end

  def show
    @article = Article.find(params[:id])
    @comments_array = Comment.where(article_id: params[:id]).order("created_at DESC")
  end

  def destroy
    Article.delete(params[:id])
    redirect_to("/articles")
  end


end
