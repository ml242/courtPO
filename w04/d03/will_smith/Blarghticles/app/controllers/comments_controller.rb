class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @article = Article.find(params[:id])
    body = params[:body]
    Comment.create(body, @article.id)
    redirect_to("/articles/#{@article.id}")
  end
end
