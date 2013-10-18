class CommentsController < ApplicationController
  def new
    @article = Article.find(params[:article_id])
    @comment = @article.comments.new
  end

  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.new(params[:comment])

    if @comment.save
      redirect_to @article
    else
      render :new
    end
  end
end