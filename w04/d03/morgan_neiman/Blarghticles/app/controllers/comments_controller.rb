class CommentsController < ApplicationController
  def index
    article_id = params[:article_id].to_i
    @comments = Comment.where(article_id: article_id)
  end
  def show
    id = params[:id].to_i
    @comment = Comment.find(id)
  end
  def new
    @comment = Comment.new
    @article_id = params[:article_id].to_i
  end
  def create
    comment = params[:comment]
    article_id = params[:comment][:article_id]
    Comment.create(comment)
    redirect_to("/articles/#{article_id}")
  end
  def edit
    id = params[:id].to_i
    @comment = Comment.find(id)
    @article_id = @comment.article_id
  end
  def update
    comment = params[:comment]
    id = params[:comment][:id].to_i
    article_id = params[:comment][:article_id].to_s
    to_edit = Comment.find(id)
    to_edit.update_attributes(comment)
    redirect_to("/articles/#{article_id}")
  end
  def destroy
    id = params[:id].to_i
    comment = Comment.find(id)
    article_id = comment.article_id
    comment.destroy
    redirect_to("/articles/#{article_id}")
  end
end