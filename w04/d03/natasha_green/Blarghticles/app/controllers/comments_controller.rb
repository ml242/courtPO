class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def new
    @comments = Comment.new
  end

  def create
    body = params[:body]
    article_id = params[:article_id]

    article = Article.find(article_id)

    comment = article.comment.create (:body => body)
    redirect_to('/articles')
    #or is it redirect_to "/comments/#{article.id}"
  end

end
