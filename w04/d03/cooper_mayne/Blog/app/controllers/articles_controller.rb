class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def create
  end

  def new
  end

  def edit
  end

  def update
  end

  def show
    id = params[:id]
    @article = Article.find id
    @comment = Comment.new
  end

  def edit
  end

  def destroy
  end
end
