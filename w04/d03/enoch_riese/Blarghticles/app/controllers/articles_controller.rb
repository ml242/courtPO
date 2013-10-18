class ArticlesController< ApplicationController
  def index
  end
  def create
    article = params[:article]
    Article.create(article)
    redirect_to "/articles"
  end
  def new
    @article = Article.new
  end
  def edit
    @article = Article.find(params[:id])
  end
  def show
    @article = Article.find(params[:id])
  end
  def update
    article = Article.find(params[:id])
    article.update_attributes(params[:article])
    redirect_to "/articles/#{params[:id]}"
  end
  def destroy
    article = Article.find(params[:id])
    article.destroy
    redirect_to "/articles"
  end
end
