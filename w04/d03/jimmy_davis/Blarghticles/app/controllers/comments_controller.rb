class CommentsController < ApplicationController

  def index
    @comments = Comment.all
  end

  def new
    @comment = Comment.new
    redirect_to('/articles')
  end

  def create
    comment = params[:comment]
    id = params[:id]
    Comment.create(comment)
    redirect_to("/comments/#{id}")
  end

  def show
    id = params[:id]
    @comment = Comment.find(id)
  end

  def edit
    id = params[:id]
    @comment = Comment.find(id)
  end

  def update
    id = params[:id]
    title = params[:title]
    body = params[:body]
    comment = Comment.find(id)
    comment.body = body
    comment.save
  end

  def destroy
    id = params[:id]
    @delete_comment = Comment.delete(id)
    redirect_to("/articles/")
  end
end
