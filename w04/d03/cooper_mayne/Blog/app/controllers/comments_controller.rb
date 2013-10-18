class CommentsController < ApplicationController

  def create
    body = params["body"]
    article_id = params["article_id"]

    Comment.create(body: body, article_id: article_id)
    redirect_to "/articles/#{article_id}"
  end

  def edit
    id = params["id"]
    @comment = Comment.find(id)
  end

  def update
    id = params["id"]
    c = Comment.find(id)
    c.update_attributes(params[:comment])
    redirect_to '/articles'
  end

  def destroy
  end
end
