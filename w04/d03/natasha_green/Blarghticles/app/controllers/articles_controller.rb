class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
      Article.create(params[:article])
      redirect_to('/articles')
  end

  def show
    id = params[:id]
    @article = Article.find(id)
    @comments = @article.comments
  end

  def edit
    id = params[:id]
    @article = Article.find(id)
  end

  def update
    id = params[:id]
    title = params[:tile]
    body = params[:body]
    comment = params[:comment]
    article = Article.find(id)
    article.title = title
    article.body = body
    article.comment = comment
    article.save

    redirect_to "/articles/#{article.id}"
  end

  def destroy
    id = params[:id]
    Article.delete(id)
    redirect_to("/articles")
  end

end

