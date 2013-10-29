class CommentsController < ApplicationController

# I don't really need an index since you wouldn't look at all of the comments out of context
  def index
  end

  def new
    @comment = Comment.new
  end

  def create
    Comment.create(params[:comment])
    redirect_to("/articles/#{params[:comment][:article_id]}")
  end

  def edit
    @comment = Comment.find(params[:id])
    @article_title = Article.where(id: @comment[:article_id]).first.title
  end

  def update
    Comment.update(params[:id], params[:comment])
    redirect_to("/articles/#{params[:comment][:article_id]}")
  end

# destroy deletes entire article and not just the comment
  def destroy
    Comment.delete(params[:id])
    redirect_to("/articles")
  end

end
