class ArticlesController < ApplicationController
    def index
      @articles = Article.all
    end

    def new
      @article = Article.new
    end

    def create
      article = params[:article]
      Article.create article

      redirect_to "/articles"
    end

    def show
      id = params[:id]
      @article = Article.find id
      @comment = Comment.new
    end

    def edit
      id = params[:id]
      @article = Article.find id
    end

    def update
      id = params[:id]
      article = params[:article]

      old_article = Article.find id
      old_article.update_attributes article

      redirect_to "/articles/#{id}"
    end

    def destroy
      id = params[:id]
      Article.delete id

      redirect_to '/articles'
    end
end
