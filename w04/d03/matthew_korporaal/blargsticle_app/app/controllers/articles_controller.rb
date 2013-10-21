class ArticlesController < ActionController::Base
  def index
    @articles = Article.all
  end
  def show
    @article = Article.find params[:id]
  end
  def create
    Article.create(
      body: params[:article][:body],
      title: params[:article][:title])
    redirect_to '/articles'
  end
  def new
    @article = Article.new
  end
  def edit
    @article = Article.find params[:id]
  end
  def update
    article = Article.find params[:id]
    article.update_attributes(
      :body => params[:article][:body],
      :title => params[:article][:title])
    redirect_to '/articles'
  end
  def destroy
    Article.destroy params[:id]
    redirect_to '/articles'
  end
end