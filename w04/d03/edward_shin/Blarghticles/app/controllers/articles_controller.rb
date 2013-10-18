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
    id = params[:id]
    @article_info = Article.find(id)
  end

  def edit
    id = params[:id]
    @article_for_edit = Article.find(id)
  end

  def update
    id = params[:id]
    new_title = params[:article][:title]
    new_body = params[:article][:body]
    a1 = Article.find(id)
    a1.title = new_title
    a1.body = new_body
    a1.save
    redirect_to('/')
  end

  def destroy
  end

end