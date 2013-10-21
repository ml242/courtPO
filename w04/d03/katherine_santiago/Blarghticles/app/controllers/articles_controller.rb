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
    # article = params[:article]
    redirect_to('/articles')
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
    article = params[:article]
    title = article[:title]
    body = article[:body]
    id = params[:id]

    edited_article = Article.update(id, title: title, body: body)
    redirect_to("/articles/#{id}")
  end

  def destroy
    id = params[:id]
    @article = Article.find(id)
    @article.destroy
    redirect_to('/articles')
  end

end
