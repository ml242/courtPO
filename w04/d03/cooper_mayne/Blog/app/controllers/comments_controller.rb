class CommentsController < ApplicationController

  def create
    body = params["body"]
    article_id = params["article_id"]

    Comment.create(body: body, article_id: article_id)
    redirect_to "/articles/#{article_id}"
  end
  def edit
  end

  def update
  end

  def destroy
  end
end
