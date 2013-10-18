class CommentsController < ApplicationController
  def create
    new = params[:comment]
    Comment.create(new)
    redirect_to("/articles")
  end
end