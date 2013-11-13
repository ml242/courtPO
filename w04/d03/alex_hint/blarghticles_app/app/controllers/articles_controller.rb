class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    article = params[:article]
    title = article[:title]
    body = article[:body]

    new_art = Article.new
    new_art.title = title
    new_art.body = body
    new_art.save

    redirect_to('/articles')
  end

  def show
    id = params[:id]
    @article = Article.find(id)
    @comment = Comment.new
    @comments = Comment.where :article_id => @article.id
  end

  def edit
    id = params[:id]
    @article = Article.find(id)
  end

  def update
    article = params[:article]
    title = article[:title]
    body = article[:body]
    id = params[:id]

    new_art = Article.find(id)
    new_art.title = title
    new_art.body = body
    new_art.save
    redirect_to("/articles/#{id}")
  end
  #DELETE /articles/:id(.:format)      articles#destroy
  def destroy
    id = params[:id]
    Article.destroy(id)

    redirect_to('/articles')
  end

end







