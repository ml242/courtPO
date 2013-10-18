class CommentsController< ApplicationController
  def index
  end
  def create
    comment = params[:comment]
    Comment.create(comment)
    redirect_to "/comments"
  end
  def new
    @comment = Comment.new
  end
  def edit
    @comment = Comment.find(params[:id])
  end
  def show
    @comment = Comment.find(params[:id])
  end
  def update
    comment = Comment.find(params[:id])
    comment.update_attributes(params[:comment])
    redirect_to "/comments/#{params[:id]}"
  end
  def destroy
    comment = Comment.find(params[:id])
    comment.destroy
    redirect_to "/comments"
  end
end
