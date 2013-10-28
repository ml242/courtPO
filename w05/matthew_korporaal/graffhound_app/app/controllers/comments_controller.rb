class CommentsController < ApplicationController
  def create
    @piece = Piece.find(params[:piece_id])
    @comment = Comment.new
    @comment.entry = params[:comment][:entry]
    @comment.piece = @piece
    user = current_user
    @comment.user = user
# TODO add session[:id] to add comment
    if @comment.save
      flash[:notice] = "Comment added"
    else
      flash[:alert] = "Comment not created."
    end
    redirect_to @piece
  end
end