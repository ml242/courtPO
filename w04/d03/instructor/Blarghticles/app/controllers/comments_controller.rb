class CommentsController < ApplicationController
  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.new(params[:comment])

    if @comment.save
      flash[:notice] = "Comment created"
    else
      flash[:error] = "Comment not created."
    end
    redirect_to @article
  end
end