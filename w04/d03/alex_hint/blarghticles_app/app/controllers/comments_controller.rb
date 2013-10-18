class CommentsController < ApplicationController

  def create
    comment = params[:comment]

    Comment.create comment

    redirect_to "/articles/#{comment[:article_id]}"
  end

end